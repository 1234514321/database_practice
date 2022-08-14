INSERT INTO profession(profession_name, profession_characteristics, profession_constraints)
VALUES (  'doctor', 'the duties of a modern doctor include: providing
          timely planned and emergency medical care, identifying the causes of various
          diseases, diagnosis the treatment of patients, implementation
          of rehabilitation and preventive measures, introduction of new drugs and medicines,' ||
          'implementation of sanitary and educational work among the population, development and ' ||
          'implementation of new methods of diagnosis and treatment of various diseases.',
          'Medical restrictions for a doctor:
          chronic infectious diseases;
          neuropsychiatric diseases;
          uncorrectable visual and hearing impairments;
          weak vestibular apparatus;
          speech disorder.');

INSERT INTO profession(profession_name, profession_characteristics)
VALUES ( 'paleontologist', 'Based on the found fossils, the paleontologist tries
         to restore the anatomical and biological features of ancient animal and plants.
         This information, in turn, helps scientists reconstruct the course of evolution.
         Paleontologist study the deep layers, they are only interested in living creatures
         of antiquity - animals, plants, insects  ');

INSERT INTO profession(profession_name, profession_characteristics)
VALUES ( 'mathematician', 'Mathematician is a highly intelligent profession.
         Its owner uses computer technology and software to develop technology ' ||
         'for solving information processing problems. Defines the volume and ' ||
         'structure of information, its input and processing schemes, ' ||
         'and selects a programming language for describing algorithms.' ||
         ' Ready - made programs pass the verification procedure. If the program works, ' ||
         'it provides its maintenance and develops instructions for its use.');

INSERT INTO skill(skill_name) VALUES ('pressure measurement');
INSERT INTO skill(skill_name) VALUES ('provide first aid');
INSERT INTO skill(skill_name) VALUES ('detect diseases');
INSERT INTO skill(skill_name) VALUES ('develop mathematical support system');
INSERT INTO skill(skill_name) VALUES ('compose algorithm and the logical scheme of the program');
INSERT INTO skill(skill_name) VALUES ('search a bones and other biological materials');
INSERT INTO skill(skill_name) VALUES ('laboratory analysis of biological materials');

INSERT INTO person (person_name, person_surname, person_gender, birth_date, p_profession_id)
VALUES('Ian', 'Malcolm', 'M', '1960-09-24', 3);

INSERT INTO person (person_name, person_surname, person_gender, birth_date, p_profession_id)
VALUES('Gerry', 'Harding', 'M', '1966-12-07', 1);

INSERT INTO person (person_name, person_surname, person_gender, birth_date, p_profession_id)
VALUES('Elly', 'Sattler', 'F', '1964-08-24', 2);

INSERT INTO person (person_name, person_surname, person_gender, birth_date, p_profession_id)
VALUES('GAY', 'JOHN', 'M', '1980-07-21', 4);

INSERT INTO person (person_name, person_surname, person_gender, birth_date, p_profession_id)
VALUES('TOM', 'Fock', 'M', '2000-07-24', 5);

INSERT INTO state(state_name, state_description) VALUES('cold',
    'Cold - a state or subjective sensation of relatively low air temperature in relation' ||
    'to a warmer time (place) or to the usual conditions for a given time(place)');

INSERT INTO state(state_name, state_description) VALUES ('boring',
    'Boredom is a type of negatively colored emotion or mood; a passive mental' ||
    'state characterized by a decrease in activity, lack of insert in any activity,' ||
    ' the world around you, and other people' );

INSERT INTO state(state_name, state_description) VALUES ('joyfully', 'Joy is a positive emotional state associated ' ||
    'with the ability to fully satisfy an actual need, the probability of which at this ' ||
    'moment was small and uncertain, this is what is felt after some creative or socially significant action.');
INSERT INTO state(state_name, state_description) VALUES ('nervous', 'Nervousness is an increased emotional response' ||
    ' to external stimuli, which usually do not correspond to the effect produced.');
INSERT INTO state(state_name, state_description) VALUES ('calm', 'Calmness is a state of mind in which ' ||
    'there are no internal conflicts and contradictions, and external objects are perceived equally balanced.');

INSERT INTO epoch(epoch_name, begin_of_period_mln_years_ago, end_of_period_mln_years_ago, mid_temperature)
VALUES('Jurassic period', 199, 145, 10);
INSERT INTO epoch(epoch_name, begin_of_period_mln_years_ago, end_of_period_mln_years_ago, mid_temperature)
VALUES('Triassic period', 252, 146,  24);

INSERT INTO type (type_name, mid_weight, mid_length, is_predator, epoch_id)
VALUES ('pterosaur', 250, 1, 'yes', 1);
INSERT INTO type (type_name, mid_weight, mid_length, is_predator, epoch_id)
VALUES ('diplodocus', 20000, 27, 'no', 1);
INSERT INTO type (type_name, mid_weight, mid_length, is_predator, epoch_id)
VALUES ('ichthyosaur', 10000, 3, 'yes', 1);
INSERT INTO type (type_name, mid_weight, mid_length, is_predator, epoch_id)
VALUES ('coelophysis', 20, 1, 'yes', 2);
INSERT INTO type (type_name, mid_weight, mid_length, is_predator, epoch_id)
VALUES ('eoraptor', 10, 1, 'yes', 2);

INSERT INTO dinosaur(dinosaur_name, dinosaur_type_id)
VALUES('Tsopa', 4);
INSERT INTO dinosaur(dinosaur_name, dinosaur_type_id)
VALUES('Nikolaev', 3);
INSERT INTO dinosaur(dinosaur_name, dinosaur_type_id)
VALUES('Gavrilov', 2);
INSERT INTO dinosaur(dinosaur_name, dinosaur_type_id)
VALUES('Uskov', 1);

INSERT INTO profession_skill VALUES(1, 1);
INSERT INTO profession_skill VALUES(1, 2);
INSERT INTO profession_skill VALUES(1, 3);
INSERT INTO profession_skill VALUES(2, 2);
INSERT INTO profession_skill VALUES(2, 6);
INSERT INTO profession_skill VALUES(2, 7);
INSERT INTO profession_skill VALUES(3, 4);
INSERT INTO profession_skill VALUES(3, 5);

INSERT INTO person_dinosaur VALUES(1, 1);
INSERT INTO person_dinosaur VALUES(1, 2);
INSERT INTO person_dinosaur VALUES(1, 3);

INSERT INTO person_state VALUES(1, 5);
INSERT INTO person_state VALUES(2, 1);
INSERT INTO person_state VALUES(2, 5);