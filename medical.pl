% Define symptoms associated with diseases
symptom(flue, fever).
symptom(flue, cough).
symptom(cold, headache).
symptom(cold, sore_throat).
symptom(strep_throat, sore_throat).
symptom(strep_throat, fever).
symptom(strep_throat, swollen_glands).

% Query to retrieve symptoms of a disease
symptoms_of(Disease, Symptom) :-
    symptom(Disease, Symptom).

% Example queries:
% Symptoms of the flu
% ?- symptoms_of(flue, Symptom).
%
% Symptoms of strep throat
% ?- symptoms_of(strep_throat, Symptom).
