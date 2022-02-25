from flask import Flask, render_template, request, flash
from clips import Environment
import os


class DiseaseDiagnoster:
    def prepare(self, clpFile):
        self.dataPath = os.path.abspath(os.path.join(os.getcwd(), 'data'))
        diseasePath = os.path.join(self.dataPath, clpFile)
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


app = Flask(__name__)
app.config['SECRET_KEY'] = os.urandom(24).hex()

engine = DiseaseDiagnoster()
engine.prepare('disease-symptoms.clp')
# engine.reset()


@app.route('/', methods=('GET', 'POST'))
def home():
    symptoms = engine.getSymptoms()
    print(symptoms)

    # for fact in engine.env.facts():
    #     print(fact)

    if request.method == 'POST':
        if request.form['action'] == 'reset':
            engine.reset()
        elif request.form['action'] == 'diagnosis':
            engine.run()
        elif request.form['action'] == 'add-symptom':
            symptomInput = request.form['symptomInput']
            if symptomInput == '':
                flash('symptom is required')
            else:
                text = symptomInput.replace(" ", "_").lower()
                engine.addSymptom(text)

    return render_template(
        'index.html',
        symptomList=engine.getSymptomList(),
        symptoms=engine.getSymptoms(),
        diseases=engine.getDiseases()
    )


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
