; ------------------------------------------------------------------------------
; this file is generated using node-js
; dataset: https://www.kaggle.com/itachi9604/disease-symptom-description-dataset
; ------------------------------------------------------------------------------

(defrule Fungal_infection
  (disease_is Fungal_infection)
  =>
  (printout t "Fungal infection" crlf)
)

(defrule is_it_Fungal_infection
  (has_symptom itching)
  (has_symptom skin_rash)
  (has_symptom nodal_skin_eruptions)
  (has_symptom dischromic_patches)
  =>
  (assert (disease_is Fungal_infection))
)
  
(defrule Allergy
  (disease_is Allergy)
  =>
  (printout t "Allergy" crlf)
)

(defrule is_it_Allergy
  (has_symptom continuous_sneezing)
  (has_symptom shivering)
  (has_symptom chills)
  (has_symptom watering_from_eyes)
  =>
  (assert (disease_is Allergy))
)
  
(defrule GERD
  (disease_is GERD)
  =>
  (printout t "GERD" crlf)
)

(defrule is_it_GERD
  (has_symptom stomach_pain)
  (has_symptom acidity)
  (has_symptom ulcers_on_tongue)
  (has_symptom vomiting)
  =>
  (assert (disease_is GERD))
)
  
(defrule Chronic_cholestasis
  (disease_is Chronic_cholestasis)
  =>
  (printout t "Chronic cholestasis" crlf)
)

(defrule is_it_Chronic_cholestasis
  (has_symptom itching)
  (has_symptom vomiting)
  (has_symptom yellowish_skin)
  (has_symptom nausea)
  =>
  (assert (disease_is Chronic_cholestasis))
)
  
(defrule Drug_Reaction
  (disease_is Drug_Reaction)
  =>
  (printout t "Drug Reaction" crlf)
)

(defrule is_it_Drug_Reaction
  (has_symptom itching)
  (has_symptom skin_rash)
  (has_symptom stomach_pain)
  (has_symptom burning_micturition)
  =>
  (assert (disease_is Drug_Reaction))
)
  
(defrule Peptic_ulcer_diseae
  (disease_is Peptic_ulcer_diseae)
  =>
  (printout t "Peptic ulcer diseae" crlf)
)

(defrule is_it_Peptic_ulcer_diseae
  (has_symptom vomiting)
  (has_symptom indigestion)
  (has_symptom loss_of_appetite)
  (has_symptom abdominal_pain)
  =>
  (assert (disease_is Peptic_ulcer_diseae))
)
  
(defrule AIDS
  (disease_is AIDS)
  =>
  (printout t "AIDS" crlf)
)

(defrule is_it_AIDS
  (has_symptom muscle_wasting)
  (has_symptom patches_in_throat)
  (has_symptom high_fever)
  (has_symptom extra_marital_contacts)
  =>
  (assert (disease_is AIDS))
)
  
(defrule Diabetes
  (disease_is Diabetes)
  =>
  (printout t "Diabetes" crlf)
)

(defrule is_it_Diabetes
  (has_symptom fatigue)
  (has_symptom weight_loss)
  (has_symptom restlessness)
  (has_symptom lethargy)
  =>
  (assert (disease_is Diabetes))
)
  
(defrule Gastroenteritis
  (disease_is Gastroenteritis)
  =>
  (printout t "Gastroenteritis" crlf)
)

(defrule is_it_Gastroenteritis
  (has_symptom vomiting)
  (has_symptom sunken_eyes)
  (has_symptom dehydration)
  (has_symptom diarrhoea)
  =>
  (assert (disease_is Gastroenteritis))
)
  
(defrule Bronchial_Asthma
  (disease_is Bronchial_Asthma)
  =>
  (printout t "Bronchial Asthma" crlf)
)

(defrule is_it_Bronchial_Asthma
  (has_symptom fatigue)
  (has_symptom cough)
  (has_symptom high_fever)
  (has_symptom breathlessness)
  =>
  (assert (disease_is Bronchial_Asthma))
)
  
(defrule Hypertension
  (disease_is Hypertension)
  =>
  (printout t "Hypertension" crlf)
)

(defrule is_it_Hypertension
  (has_symptom headache)
  (has_symptom chest_pain)
  (has_symptom dizziness)
  (has_symptom loss_of_balance)
  =>
  (assert (disease_is Hypertension))
)
  
(defrule Migraine
  (disease_is Migraine)
  =>
  (printout t "Migraine" crlf)
)

(defrule is_it_Migraine
  (has_symptom acidity)
  (has_symptom indigestion)
  (has_symptom headache)
  (has_symptom blurred_and_distorted_vision)
  =>
  (assert (disease_is Migraine))
)
  
(defrule Cervical_spondylosis
  (disease_is Cervical_spondylosis)
  =>
  (printout t "Cervical spondylosis" crlf)
)

(defrule is_it_Cervical_spondylosis
  (has_symptom back_pain)
  (has_symptom weakness_in_limbs)
  (has_symptom neck_pain)
  (has_symptom dizziness)
  =>
  (assert (disease_is Cervical_spondylosis))
)
  
(defrule Paralysis
  (disease_is Paralysis)
  =>
  (printout t "Paralysis" crlf)
)

(defrule is_it_Paralysis
  (has_symptom vomiting)
  (has_symptom headache)
  (has_symptom weakness_of_one_body_side)
  (has_symptom altered_sensorium)
  =>
  (assert (disease_is Paralysis))
)
  
(defrule Jaundice
  (disease_is Jaundice)
  =>
  (printout t "Jaundice" crlf)
)

(defrule is_it_Jaundice
  (has_symptom itching)
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom weight_loss)
  =>
  (assert (disease_is Jaundice))
)
  
(defrule Malaria
  (disease_is Malaria)
  =>
  (printout t "Malaria" crlf)
)

(defrule is_it_Malaria
  (has_symptom chills)
  (has_symptom vomiting)
  (has_symptom high_fever)
  (has_symptom sweating)
  =>
  (assert (disease_is Malaria))
)
  
(defrule Chicken_pox
  (disease_is Chicken_pox)
  =>
  (printout t "Chicken pox" crlf)
)

(defrule is_it_Chicken_pox
  (has_symptom itching)
  (has_symptom skin_rash)
  (has_symptom fatigue)
  (has_symptom lethargy)
  =>
  (assert (disease_is Chicken_pox))
)
  
(defrule Dengue
  (disease_is Dengue)
  =>
  (printout t "Dengue" crlf)
)

(defrule is_it_Dengue
  (has_symptom skin_rash)
  (has_symptom chills)
  (has_symptom joint_pain)
  (has_symptom vomiting)
  =>
  (assert (disease_is Dengue))
)
  
(defrule Typhoid
  (disease_is Typhoid)
  =>
  (printout t "Typhoid" crlf)
)

(defrule is_it_Typhoid
  (has_symptom chills)
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom high_fever)
  =>
  (assert (disease_is Typhoid))
)
  
(defrule hepatitis_A
  (disease_is hepatitis_A)
  =>
  (printout t "hepatitis A" crlf)
)

(defrule is_it_hepatitis_A
  (has_symptom joint_pain)
  (has_symptom vomiting)
  (has_symptom yellowish_skin)
  (has_symptom dark_urine)
  =>
  (assert (disease_is hepatitis_A))
)
  
(defrule Hepatitis_B
  (disease_is Hepatitis_B)
  =>
  (printout t "Hepatitis B" crlf)
)

(defrule is_it_Hepatitis_B
  (has_symptom itching)
  (has_symptom fatigue)
  (has_symptom lethargy)
  (has_symptom yellowish_skin)
  =>
  (assert (disease_is Hepatitis_B))
)
  
(defrule Hepatitis_C
  (disease_is Hepatitis_C)
  =>
  (printout t "Hepatitis C" crlf)
)

(defrule is_it_Hepatitis_C
  (has_symptom fatigue)
  (has_symptom yellowish_skin)
  (has_symptom nausea)
  (has_symptom loss_of_appetite)
  =>
  (assert (disease_is Hepatitis_C))
)
  
(defrule Hepatitis_D
  (disease_is Hepatitis_D)
  =>
  (printout t "Hepatitis D" crlf)
)

(defrule is_it_Hepatitis_D
  (has_symptom joint_pain)
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom yellowish_skin)
  =>
  (assert (disease_is Hepatitis_D))
)
  
(defrule Hepatitis_E
  (disease_is Hepatitis_E)
  =>
  (printout t "Hepatitis E" crlf)
)

(defrule is_it_Hepatitis_E
  (has_symptom joint_pain)
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom high_fever)
  =>
  (assert (disease_is Hepatitis_E))
)
  
(defrule Alcoholic_hepatitis
  (disease_is Alcoholic_hepatitis)
  =>
  (printout t "Alcoholic hepatitis" crlf)
)

(defrule is_it_Alcoholic_hepatitis
  (has_symptom vomiting)
  (has_symptom yellowish_skin)
  (has_symptom abdominal_pain)
  (has_symptom swelling_of_stomach)
  =>
  (assert (disease_is Alcoholic_hepatitis))
)
  
(defrule Tuberculosis
  (disease_is Tuberculosis)
  =>
  (printout t "Tuberculosis" crlf)
)

(defrule is_it_Tuberculosis
  (has_symptom chills)
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom weight_loss)
  =>
  (assert (disease_is Tuberculosis))
)
  
(defrule Common_Cold
  (disease_is Common_Cold)
  =>
  (printout t "Common Cold" crlf)
)

(defrule is_it_Common_Cold
  (has_symptom continuous_sneezing)
  (has_symptom chills)
  (has_symptom fatigue)
  (has_symptom cough)
  =>
  (assert (disease_is Common_Cold))
)
  
(defrule Pneumonia
  (disease_is Pneumonia)
  =>
  (printout t "Pneumonia" crlf)
)

(defrule is_it_Pneumonia
  (has_symptom chills)
  (has_symptom fatigue)
  (has_symptom cough)
  (has_symptom high_fever)
  =>
  (assert (disease_is Pneumonia))
)
  
(defrule Dimorphic_hemmorhoids
  (disease_is Dimorphic_hemmorhoids)
  =>
  (printout t "Dimorphic hemmorhoids" crlf)
)

(defrule is_it_Dimorphic_hemmorhoids
  (has_symptom constipation)
  (has_symptom pain_during_bowel_movements)
  (has_symptom pain_in_anal_region)
  (has_symptom bloody_stool)
  =>
  (assert (disease_is Dimorphic_hemmorhoids))
)
  
(defrule Heart_attack
  (disease_is Heart_attack)
  =>
  (printout t "Heart attack" crlf)
)

(defrule is_it_Heart_attack
  (has_symptom vomiting)
  (has_symptom breathlessness)
  (has_symptom sweating)
  (has_symptom chest_pain)
  =>
  (assert (disease_is Heart_attack))
)
  
(defrule Varicose_veins
  (disease_is Varicose_veins)
  =>
  (printout t "Varicose veins" crlf)
)

(defrule is_it_Varicose_veins
  (has_symptom fatigue)
  (has_symptom cramps)
  (has_symptom bruising)
  (has_symptom obesity)
  =>
  (assert (disease_is Varicose_veins))
)
  
(defrule Hypothyroidism
  (disease_is Hypothyroidism)
  =>
  (printout t "Hypothyroidism" crlf)
)

(defrule is_it_Hypothyroidism
  (has_symptom fatigue)
  (has_symptom weight_gain)
  (has_symptom cold_hands_and_feets)
  (has_symptom mood_swings)
  =>
  (assert (disease_is Hypothyroidism))
)
  
(defrule Hyperthyroidism
  (disease_is Hyperthyroidism)
  =>
  (printout t "Hyperthyroidism" crlf)
)

(defrule is_it_Hyperthyroidism
  (has_symptom fatigue)
  (has_symptom mood_swings)
  (has_symptom weight_loss)
  (has_symptom restlessness)
  =>
  (assert (disease_is Hyperthyroidism))
)
  
(defrule Hypoglycemia
  (disease_is Hypoglycemia)
  =>
  (printout t "Hypoglycemia" crlf)
)

(defrule is_it_Hypoglycemia
  (has_symptom vomiting)
  (has_symptom fatigue)
  (has_symptom anxiety)
  (has_symptom sweating)
  =>
  (assert (disease_is Hypoglycemia))
)
  
(defrule Osteoarthristis
  (disease_is Osteoarthristis)
  =>
  (printout t "Osteoarthristis" crlf)
)

(defrule is_it_Osteoarthristis
  (has_symptom joint_pain)
  (has_symptom neck_pain)
  (has_symptom knee_pain)
  (has_symptom hip_joint_pain)
  =>
  (assert (disease_is Osteoarthristis))
)
  
(defrule Arthritis
  (disease_is Arthritis)
  =>
  (printout t "Arthritis" crlf)
)

(defrule is_it_Arthritis
  (has_symptom muscle_weakness)
  (has_symptom stiff_neck)
  (has_symptom swelling_joints)
  (has_symptom movement_stiffness)
  =>
  (assert (disease_is Arthritis))
)
  
(defrule Paroymsal__Positional_Vertigo
  (disease_is Paroymsal__Positional_Vertigo)
  =>
  (printout t "Paroymsal  Positional Vertigo" crlf)
)

(defrule is_it_Paroymsal__Positional_Vertigo
  (has_symptom vomiting)
  (has_symptom headache)
  (has_symptom nausea)
  (has_symptom spinning_movements)
  =>
  (assert (disease_is Paroymsal__Positional_Vertigo))
)
  
(defrule Acne
  (disease_is Acne)
  =>
  (printout t "Acne" crlf)
)

(defrule is_it_Acne
  (has_symptom skin_rash)
  (has_symptom pus_filled_pimples)
  (has_symptom blackheads)
  (has_symptom scurring)
  =>
  (assert (disease_is Acne))
)
  
(defrule Urinary_tract_infection
  (disease_is Urinary_tract_infection)
  =>
  (printout t "Urinary tract infection" crlf)
)

(defrule is_it_Urinary_tract_infection
  (has_symptom burning_micturition)
  (has_symptom bladder_discomfort)
  (has_symptom foul_smell_ofurine)
  (has_symptom continuous_feel_of_urine)
  =>
  (assert (disease_is Urinary_tract_infection))
)
  
(defrule Psoriasis
  (disease_is Psoriasis)
  =>
  (printout t "Psoriasis" crlf)
)

(defrule is_it_Psoriasis
  (has_symptom skin_rash)
  (has_symptom joint_pain)
  (has_symptom skin_peeling)
  (has_symptom silver_like_dusting)
  =>
  (assert (disease_is Psoriasis))
)
  
(defrule Impetigo
  (disease_is Impetigo)
  =>
  (printout t "Impetigo" crlf)
)

(defrule is_it_Impetigo
  (has_symptom skin_rash)
  (has_symptom high_fever)
  (has_symptom blister)
  (has_symptom red_sore_around_nose)
  =>
  (assert (disease_is Impetigo))
)
  