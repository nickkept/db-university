-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT * FROM `students` INNER JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` WHERE `degrees`.`name` = "Corso di Laurea in Economia";
-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT * FROM `degrees` INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` WHERE `level` = "magistrale" AND `departments`.`name` = "Dipartimento di Neuroscienze";
-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT * FROM `course_teacher` INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id` WHERE `teachers`.`id` = 44;
-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name` as `corso_di_laurea`, `departments`.`name`as `dipartimento` FROM `students` INNER JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` 
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` ORDER BY `students`.`surname`ASC, `students`.`name`ASC;
-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT * FROM `degrees` INNER JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id` INNER JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `courses`.`id`;
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT `teachers`.`name`, `teachers`.`surname`, `departments`.`name` FROM `teachers` INNER JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `teachers`.`id` 
INNER JOIN `courses` ON `course_teacher`.`course_id`=`courses`.`id` INNER JOIN `degrees` ON `courses`.`degree_id`= `degrees`.`id` INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` WHERE `departments`.`name` = "Dipartimento di Matematica";
-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami