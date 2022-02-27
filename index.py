from flask import Flask, render_template, request, jsonify
from clips import Environment
import os
import json


class DiseaseDiagnosis:
    def prepare(self):
        self.dataPath = os.path.abspath(os.path.join(os.getcwd(), 'data'))
        diseasePath = os.path.join(self.dataPath, 'disease-symptoms.clp')
        self.env = Environment()
        self.env.load(diseasePath)

    def reset(self):
        self.env.reset()

    def addSymptom(self, symptom):
        text = f'(assert (has_symptom {symptom}))'
        self.env.eval(text)

    def run(self):
        _ = self.env.run()

    def getDiseases(self):
        diseases = []

        for fact in self.env.facts():
            fact = str(fact)
            if "disease_is" in fact:
                disease = fact[1:-1].split(" ")[1]
                disease = disease.replace("_", " ")
                disease = disease.title()
                diseases.append(disease)
        return diseases

    def getSymptoms(self):
        symptoms = []

        for fact in self.env.facts():
            fact = str(fact)
            if "has_symptom" in fact:
                symptom = fact[1:-1].split(" ")[1]
                symptom = symptom.replace("_", " ")
                symptom = symptom.title()
                symptoms.append(symptom)
        return symptoms

    def getSymptomList(self):
        path = os.path.join(self.dataPath, 'symptoms.txt')
        f = open(path, "r")
        symptoms = []
        for x in f:
            x = x.replace(',', '')
            x = x.replace('\r', '')
            x = x.replace('\n', '')
            x = x.replace('_', ' ')
            x = x.title()
            symptoms.append(x)
        return symptoms


class DiseaseInfo:
    def __init__(self):
        self.decsriptions = self.getDescriptions()
        self.precautions = self.getPrecautions()

    def detail(self, diseases):
        data = []
        for disease in diseases:
            x = disease.lower().strip().replace(" ", "_")
            oneData = {
                'name': disease,
                'description': self.decsriptions[x],
                'precautions': self.precautions[x]
            }
            data.append(oneData)
        return data

    def getDescriptions(self):
        data = {}
        f = open("./data/disease-description.csv", "r")
        counter = 0
        for x in f:
            counter += 1
            if counter <= 1:
                continue
            x = x.strip().split(',')
            x[0] = x[0].lower().strip().replace(" ", "_")
            x[1] = ",".join(x[1:]).replace("\"", "")
            data[x[0]] = x[1]
        return data

    def getPrecautions(self):
        data = {}
        f = open("./data/disease-precaution.csv", "r")
        counter = 0
        for x in f:
            counter += 1
            if counter <= 1:
                continue
            x = x.strip().split(',')
            x[0] = x[0].lower().strip().replace(" ", "_")
            precautions = []
            for i in range(1, len(x)):
                precaution = x[i].strip().capitalize()
                if precaution != "":
                    precautions.append(precaution)

            data[x[0]] = precautions
        return data


app = Flask(__name__)
app.config['SECRET_KEY'] = os.urandom(24).hex()

engine = DiseaseDiagnosis()
engine.prepare()

info = DiseaseInfo()


@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template('index.html', symptomList=engine.getSymptomList())


@app.route('/diagnose', methods=['POST'])
def diagnose():
    engine.reset()

    data = request.get_data(as_text=True)
    try:
        data = json.loads(data)
        for symptom in data['symptoms']:
            symptom = symptom.replace(' ', '_').lower()
            engine.addSymptom(symptom)

        engine.run()
        diseases = engine.getDiseases()

        return jsonify({
            'status': 'success',
            'diseases': info.detail(diseases)
        })
    except:
        return jsonify({
            'status': 'error'
        })


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
