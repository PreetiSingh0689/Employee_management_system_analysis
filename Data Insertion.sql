/* Data insertion */
INSERT INTO departments(department_name, location) VALUES
    ('Sales', 'New York'),
    ('HR', 'Los Angeles'),
    ('IT', 'San Francisco');

INSERT INTO employees(first_name, last_name, email, hire_date, salary, department_id, job_title)
VALUES
    ('Maurine', 'Nyongesa', 'maurine.nyongesa@gmail.com', '2021-03-15', 55000, 1, 'Sales Executive'),
    ('Asa', 'Moh', 'asa.moh@gmail.com', '2020-06-30', 60000, 2, 'HR Manager'),
    ('Steve', 'Jobs', 'steve.jobs@gmail.com', '2019-08-10', 75000, 3, 'IT Specialist');
    
INSERT INTO performance_reviews(employee_id, review_date, rating, comments) VALUES
    (1, '2023-06-15', 4, 'Great performance but needs improvement in client interaction.'),
    (2, '2023-05-12', 5, 'Excellent management skills, highly recommended for promotion.'),
    (3, '2023-07-20', 3, 'Satisfactory performance but needs more technical training.');