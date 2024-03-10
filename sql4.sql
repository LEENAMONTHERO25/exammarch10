use exam;
create table Employee(
Emp_id int,
Emp_name varchar(25),
Salary int,
Manager_id int);
select * from  Employee ;
insert into Employee(Emp_id,Emp_name,Salary,Manager_id) values(10,"Anil",50000,18),(11,"Vikas",75000,16),(12,"Nisha",40000,18),(13,"Nidhi",60000,17),(14,"Priya",80000,18),(15,"Mohit",45000,18),(16,"Rajesh",90000,NULL),
(17,"Raman",55000,16),(18,"Santosh",65000,17);

SELECT e.Manager_id AS Manager_id,
       m.Emp_name AS Manager,
       AVG(e.Salary) AS Average_salary_Under_Manager
FROM Employee e
JOIN Employee m ON e.Manager_id = m.Emp_id
GROUP BY e.Manager_id, m.Emp_name;
