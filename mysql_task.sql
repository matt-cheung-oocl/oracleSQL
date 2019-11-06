CREATE TABLE Student (id int(3) NOT NULL, name varchar(255) NOT NULL, age int NOT NULL, sex varchar(6) NOT NULL CHECK (sex IN ('male', 'female')), CONSTRAINT student_pk PRIMARY KEY (id));

CREATE TABLE Subject (id int NOT NULL, subject varchar(255) NOT NULL, teacher varchar(255) NOT NULL, description varchar(255), CONSTRAINT subject_pk PRIMARY KEY (id));

CREATE TABLE Score (id int NOT NULL, student_id int(3) NOT NULL, subject_id int NOT NULL, score double(100, 1)) NOT NULL, CONSTRAINT score_pk PRIMARY KEY (id);

INSERT INTO Student (id, name, age, sex)
VALUES (001, 'zhangsan', 18, 'male');

INSERT INTO Student (id, name, age, sex)
VALUES (002, 'lisi', 20, 'female');

INSERT INTO Subject (id, subject, teacher, description)
VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');

INSERT INTO Subject (id, subject, teacher, description)
VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO Score (id, student_id, subject_id, score)
VALUES (1, 001, 1001, 80);

INSERT INTO Score (id, student_id, subject_id, score)
VALUES (2, 002, 1002, 60);

INSERT INTO Score (id, student_id, subject_id, score)
VALUES (3, 001, 1001, 70);

INSERT INTO Score (id, student_id, subject_id, score)
VALUES (4, 002, 1002, 60.5);