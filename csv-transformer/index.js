const fs = require('fs');
const readline = require('readline');

const reader = fs.createReadStream('../data/disease-symptoms.csv');
const writer = fs.createWriteStream('../data/disease-symptoms.clp');
const rl = readline.createInterface({ input: reader });

const clpNote = `; ------------------------------------------------------------------------------
; this file is generated using node-js
; dataset: https://www.kaggle.com/itachi9604/disease-symptom-description-dataset
; ------------------------------------------------------------------------------
`;

writer.write(clpNote);

const allSymptoms = new Set();
let lineNumber = 0;

// Write Each Line
rl.on('line', (row) => {
  lineNumber++;
  if (lineNumber === 1) return;
  const line = row
    .split(',')
    .map((i) => i.trim())
    .filter((i) => i !== '');
  const disease = {
    name: line[0],
    nameWithUnderscore: line[0].split(' ').join('_'),
    symptoms: line.slice(1, 5).map((symptom) => symptom.replaceAll(' ', '')),
  };

  const clpFormat = `
(defrule ${disease.nameWithUnderscore}
  (disease_is ${disease.nameWithUnderscore})
  =>
  (printout t "${disease.name}" crlf)
)

(defrule is_it_${disease.nameWithUnderscore}
  ${disease.symptoms.map((symptom) => `(has_symptom ${symptom})`).join('\n  ')}
  =>
  (assert (disease_is ${disease.nameWithUnderscore}))
)
  `;

  writer.write(clpFormat);

  // Inspect what symptoms
  disease.symptoms.forEach((symptom) => allSymptoms.add(symptom));
});

rl.on('close', () => {
  const symptomsWriter = fs.createWriteStream('../data/symptoms.txt');
  symptomsWriter.write([...allSymptoms].sort().join(',\n'));
});
