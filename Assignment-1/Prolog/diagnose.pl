diagnose(Q, Symp):-state(Q, Symp, true),!.
diagnose(Q, Symp):-state(Q, Symp, false),!, fail.
diagnose(Q, Symp):-nl,write(Q),write(' '),
			write(Symp) , write("? answer 'y.'or'n.' "), read(Answer), !,
			((Answer=y, asserta(state(Q, Symp, true)));(asserta(state(Q, Symp, false)), fail)).

symptom(Symp):-diagnose('Do you have',Symp).

disease(_,"got Influenza"):-
						symptom("Fever"),
						symptom("Cough"),
						symptom("Sore throat"),
						symptom("Runny or stuffy nose"),
						symptom("Muscle or body aches"),
						symptom("Headaches"),
						symptom("Fatigue (tiredness)"),
                        symptom("Vomiting and diarrhea").
								
disease(_,"are in Early AIDS"):-
						symptom("Fever"),
						symptom("Chills"),
						symptom("Rash"),
						symptom("Night sweats"),
                        symptom("Muscle aches"),
						symptom("Sore throat"),
						symptom("Fatigue"),
                        symptom("Swollen lymph nodes"),
						symptom("Mouth ulcers").

disease(_,"are in Progression AIDS"):-
						symptom("Rapid weight loss"),
						symptom("Recurring fever or profuse night sweats"),
						symptom("Extreme and unexplained tiredness"),
						symptom("Prolonged swelling of the lymph glands in the armpits, groin, or neck"),
                        symptom("Diarrhea that lasts for more than a week"),
						symptom("Sores of the mouth, anus, or genitals"),
						symptom("Pneumonia"),
                        symptom("Red, brown, pink, or purplish blotches on or under the skin or inside the mouth, nose, or eyelids"),
						symptom("Memory loss, depression, and other neurologic disorders").

disease(_,"got Hepatitis C"):-
                        symptom("Fever"),
                        symptom("Fatigue"),
						symptom("Confirmed by blood test").
						
disease(_,"are Pregnancy"):-
						symptom("Mood swings like depression, irritability, anxiety, and euphoria"),
						symptom("Frequent urination and incontinence during"),
                        symptom("Constipated and blocked"),
						symptom("Nausea and morning sickness"),
                        symptom("High blood pressure and dizziness"),
                        symptom("Smell sensitivity and food aversions"),
                        symptom("Weight gain").
			
expert:-nl,write('Welcome to use diagnostic system'),nl,
            disease(symptom,Disease) ,!,nl,
			write('Maybe you '), write(Disease).
expert:-nl,write('Sorry,we cannot diagnose for you').
start:- abolish(state/3),dynamic(state/3),retractall(state/3),expert.
:- initialization(start).	