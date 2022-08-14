create database test;
CREATE TABLE profession (   profession_id serial PRIMARY KEY,
                            profession_name character(64) NOT NULL,
                            profession_characteristics text NOT NULL,
                            profession_constraints text);

CREATE TYPE gender AS ENUM ('F', 'M');

CREATE TABLE person (   person_id serial primary key NOT NULL,
                        person_name character(64) NOT NULL,
                        person_surname character(64) NOT NULL,
                        person_gender gender,
                        birth_date date NOT NULL,
                        p_profession_id integer REFERENCES profession(profession_id)
                                                         ON DELETE SET NULL);

CREATE TABLE epoch (   epoch_id serial primary key NOT NULL,
                       epoch_name character(16) NOT NULL,
                       begin_of_period_mln_years_ago integer NOT NULL,
                       end_of_period_mln_years_ago integer NOT NULL,
                       mid_temperature integer NOT NULL);

CREATE TABLE type (   dinosaur_type_id serial primary key NOT NULL,
                      type_name character(32) NOT NULL,
                      mid_weight integer NOT NULL CHECK (mid_weight > 0),
                      mid_length integer NOT NULL CHECK (mid_length > 0),
                      is_predator boolean NOT NULL,
                      epoch_id int NOT NULL REFERENCES epoch(epoch_id) ON DELETE
                          CASCADE);

CREATE TABLE dinosaur (   dinosaur_id serial primary key NOT NULL,
                          dinosaur_name character(32) NOT NULL,
                          dinosaur_type_id integer NOT NULL REFERENCES
                              type(dinosaur_type_id) ON DELETE CASCADE);

CREATE TABLE state (   state_id serial primary key NOT NULL,
                       state_name character(16) NOT NULL,
                       state_description text);

CREATE TABLE skill (   skill_id serial primary key NOT NULL,
                       skill_name character(64) NOT NULL);

CREATE TABLE person_state (   person_id integer NOT NULL,
                              state_id integer NOT NULL);

ALTER TABLE person_state
    ADD FOREIGN KEY (person_id) REFERENCES person(person_id) ON
        DELETE CASCADE,
    ADD FOREIGN KEY (state_id) REFERENCES state(state_id) ON DELETE CASCADE;

CREATE TABLE professional_skill (   profession_id integer NOT NULL,
                                    skill_id integer NOT NULL);

ALTER TABLE professional_skill
    ADD FOREIGN KEY (profession_id) REFERENCES
        profession(profession_id) ON DELETE CASCADE,
ADD FOREIGN KEY (skill_id) REFERENCES skill(skill_id) ON DELETE CASCADE;



