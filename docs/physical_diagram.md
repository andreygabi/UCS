# Физическая модель базы данных

## Таблица students

| Поле         | Тип данных      | Описание             | Ограничения  |
|--------------|-----------------|----------------------|--------------|
| student_id    | SERIAL          | ID студента          | PRIMARY KEY  |
| first_name    | VARCHAR(50)     | Имя студента         | NOT NULL     |
| last_name     | VARCHAR(50)     | Фамилия студента     | NOT NULL     |
| birth_date    | DATE            | Дата рождения        |              |
| semester     | INTEGER         | Текущий семестр      |              |
| group        | VARCHAR(20)     | Учебная группа       |              |

## Таблица teachers

| Поле         | Тип данных      | Описание             | Ограничения  |
|--------------|-----------------|----------------------|--------------|
| teacher_id    | SERIAL          | ID преподавателя     | PRIMARY KEY  |
| first_name    | VARCHAR(50)     | Имя преподавателя    | NOT NULL     |
| last_name     | VARCHAR(50)     | Фамилия преподавателя| NOT NULL     |
| department   | VARCHAR(100)    | Кафедра              |              |

## Таблица courses

| Поле         | Тип данных      | Описание             | Ограничения  |
|--------------|-----------------|----------------------|--------------|
| course_id     | SERIAL          | ID курса             | PRIMARY KEY  |
| course_name   | VARCHAR(50)     | Название курса       | NOT NULL     |
| description  | TEXT            | Описание курса       |              |
| teacher_id    | INTEGER         | ID преподавателя     | FOREIGN KEY, NOT NULL |

## Таблица enrollments

| Поле          | Тип данных      | Описание             | Ограничения  |
|---------------|-----------------|----------------------|--------------|
| enrollment_id  | SERIAL          | ID зачисления        | PRIMARY KEY  |
| student_id     | INTEGER         | ID студента          | FOREIGN KEY, NOT NULL |
| course_id      | INTEGER         | ID курса             | FOREIGN KEY, NOT NULL |
| semester      | INTEGER         | Семестр зачисления   | NOT NULL     |

## Таблица grades

| Поле         | Тип данных      | Описание             | Ограничения  |
|--------------|-----------------|----------------------|--------------|
| grade_id      | SERIAL          | ID оценки            | PRIMARY KEY  |
| student_id    | INTEGER         | ID студента          | FOREIGN KEY, NOT NULL |
| course_id     | INTEGER         | ID курса             | FOREIGN KEY, NOT NULL |
| grade        | INTEGER         | Оценка               |  |
| creation_date | TIMESTAMP       | Дата создания записи | NOT NULL |
| updated_at    | TIMESTAMP       | Дата обновления      | NOT NULL|