/*Create the table*/
CREATE TABLE student_table (
    Student_id SERIAL PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC,
    Grade TEXT
);
/*Data Entry
Insert 10 sample records into the "student_table" using INSERT command.*/
INSERT INTO student_table (Stu_name, Department, email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade)
VALUES
    ('Aarav Patel', 'Computer Science', 'aarav.patel@example.com', 9876543210, '123, Gandhi Nagar, Mumbai', '1999-05-15', 'Male', 'B.Tech', 8.5, 'A'),
    ('Riya Sharma', 'Electronics Engineering', 'riya.sharma@example.com', 8765432109, '456, Jaipur Road, Delhi', '2000-02-20', 'Female', 'B.E.', 7.2, 'B'),
    ('Kiran Singh', 'Mechanical Engineering', 'kiran.singh@example.com', 7890123456, '789, Bangalore Street, Bangalore', '1998-09-10', 'Male', 'B.Tech', 7.8, 'B'),
    ('Neha Gupta', 'Civil Engineering', 'neha.gupta@example.com', 9876012345, '567, Chennai Avenue, Chennai', '1999-11-25', 'Female', 'B.E.', 6.5, 'C'),
    ('Rahul Verma', 'Electrical Engineering', 'rahul.verma@example.com', 8765123450, '234, Kolkata Lane, Kolkata', '2000-04-05', 'Male', 'B.Tech', 8.0, 'B'),
    ('Ananya Das', 'Computer Science', 'ananya.das@example.com', 7890234561, '678, Hyderabad Road, Hyderabad', '1999-07-18', 'Female', 'B.E.', 7.5, 'B'),
    ('Vikram Rajput', 'Mechanical Engineering', 'vikram.rajput@example.com', 9876543012, '345, Pune Circle, Pune', '1998-12-01', 'Male', 'B.Tech', 6.2, 'C'),
    ('Sneha Patel', 'Electrical Engineering', 'sneha.patel@example.com', 8765432101, '789, Ahmedabad Street, Ahmedabad', '2000-03-12', 'Female', 'B.E.', 8.2, 'A'),
    ('Rajeev Kumar', 'Civil Engineering', 'rajeev.kumar@example.com', 7890123456, '567, Lucknow Avenue, Lucknow', '1999-06-30', 'Male', 'B.Tech', 7.0, 'B'),
    ('Pooja Singh', 'Computer Science', 'pooja.singh@example.com', 9876012345, '234, Jaipur Lane, Jaipur', '2000-01-05', 'Female', 'B.E.', 6.8, 'C');

/*Select all records ordered by grade in descending order*/
SELECT * FROM student_table ORDER BY Grade DESC;

/*Select records where gender is Male*/
SELECT * FROM student_table WHERE Gender = 'Male';

/*Select records where GPA is less than 5.0*/
SELECT * FROM student_table WHERE GPA < 5.0;

/*Write an update statement to modify the email and grade of a student with a specific ID in the
"student_table."*/
UPDATE student_table SET email_id = 'Aarav.patel@example.com', Grade = 'B' WHERE Student_id = 1;

/*Develop a query to retrieve the names and ages of all students who have a grade of "B" from
the "student_table."*/
SELECT Stu_name, Date_of_birth FROM student_table WHERE Grade = 'B';

/*Create a query to group the "student_table" by the "Department" and "Gender" columns and
calculate the average GPA for each combination.*/
SELECT Department, Gender, AVG(GPA) AS Avg_GPA FROM student_table GROUP BY Department, Gender;

/*Rename the "student_table" to "student_info" using the appropriate SQL statement.*/
ALTER TABLE student_table RENAME TO student_info;
SELECT * FROM student_info;

/*Write a query to retrieve the name of the student with the highest GPA from the
"student_info" table.*/
SELECT Stu_name FROM student_info ORDER BY GPA DESC LIMIT 1