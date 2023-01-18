-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) as `count`, YEAR(`enrolment_date`) as `year` FROM `students` GROUP BY `year`;
-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) as `count`, `office_address` as `office` FROM `teachers` GROUP BY `office`;
-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT COUNT(*) as `count`, AVG(`vote`) as `average_vote` FROM `exam_student`;
-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) as `course_number` FROM `degrees` GROUP BY `department_id`;
