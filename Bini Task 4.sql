use dummy;
create table Employee (
    EmpID int primary key,
    Name varchar(100),
    Department varchar(50),
    Salary int,
    Experience int,
    Gender varchar(200),
    City varchar(50)
);

insert into Employee values (1, 'asha', 'HR', 40000, 3,'female', 'Delhi');
insert into Employee values (2, 'Ravi', 'IT', 60000, 5,'male', 'Chennai');
insert into Employee values (3, 'Meera', 'IT', 55000, 4,'female', 'Mumbai');
insert into Employee values (4, 'John', 'Finance', 45000, 2,'male', 'Delhi');
insert into Employee values (5, 'Priya', 'HR', 42000, 3,'female', 'Chennai');
insert into Employee values (6, 'Kumar', 'IT', 70000, 6,'male', 'Delhi');
insert into Employee values (7, 'Divya', 'Finance', 47000, 5,'female', 'Mumbai');
insert into Employee values (8, 'Arun', 'HR', 41000, 2,'male', 'Delhi');
insert into Employee values (9, 'Latha', 'IT', 62000, 4,'female', 'Chennai');
insert into Employee values (10, 'Naveen', 'Finance', 48000, 3,'male', 'Mumbai');

select * from Employee;

select Department, COUNT(*) as TotalEmployees from Employee
group by Department;

select Department, AVG(Salary) as AverageSalary from Employee
group by Department;

select City, SUM(Salary) as TotalCitySalary from Employee
group by City;

select Department, MAX(Experience) as MaxExperience from Employee
group by Department;

select Department, AVG(Salary) as AvgSal from Employee
group by Department
HAVING AVG(Salary) > 50000;