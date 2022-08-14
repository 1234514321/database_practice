SELECT * from person where (birth_date > '1970-01-01') and (person_gender = 'F');

ALTER TABLE person ADD driverprava character(1);

select dinosaur_name from dinosaur
  join person_dinosaur on dinosaur.dinosaur_id = person_dinosaur.dinosaur_id
  join person on person_dinosaur.person_id = person.person_id
where person.person_id = 1

SELECT epoch_name, dinosaur_name from epoch
  join type on epoch.epoch_id = type.epoch_id
  join dinosaur on type.dinosaur_type_id = dinosaur.dinosaur_type_id
  join person_dinosaur on dinosaur.dinosaur_id = person_dinosaur.dinosaur_id
  join person on person_dinosaur.person_id = person.person_id
  join profession on profession.profession_id = person.p_profession_id
where profession_name = 'doctor';

CREATE TABLE person1 (   person_id integer unique primary key NOT NULL,
                         person_name character(64) NOT NULL,
                         person_surname character(64) NOT NULL,
                         person_gender gender,
                         birth_date date NOT NULL,
                         p_profession_id integer REFERENCES profession(profession_id)
                         ON DELETE SET NULL,
                         driveprv character(1) CHECK ((driveprv = 'A') or (driveprv = 'B')
                                                          or (driveprv = 'C')));
INSERT INTO person1(person_id, person_name, person_surname,  birth_date, driveprv)
VALUES(1, 'OLEG', 'OLEGOV', '2022-11-12', 'A');

SELECT p.person_name from person_parent
JOIN person_parent as p on p.parent_id = person_parent.person_id
WHERE person_parent.person_name = 'B';