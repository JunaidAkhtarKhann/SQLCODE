Create Database SQL_Capstone_project_3

Create table Employee_Details (Emp_Id int Primary key, First_name varchar(max), Last_name varchar(max), salary int, Joining_Data DATE,
Department varchar(max), Gender varchar(max))
Select * from Employee_Details
Drop Table Employee_Details
Insert into Employee_Details Values (1, 'Vikas', 'Ahlawat', 600000, '12-02-2013' , 'IT', 'Male')
Insert into Employee_Details Values (2, 'Nikita', 'Jain', 530000, '2/14/2013' , 'HR', 'Male')
Insert into Employee_Details Values (3, 'Ashish', 'Kumar', 1000000, '2/14/2013' , 'IT', 'Male')
Insert into Employee_Details Values (4, 'Nikhil', 'Sharma', 480000, '2/15/2013' , 'HR', 'Male')
Insert into Employee_Details Values (5, 'Anish', 'Kedian', 500000, '2/16/2013' , 'Paroll', 'Male')

Update Employee_Details Set Gender='Female' where Emp_Id = 2


--1) Write a query to get all employee detail from "EmployeeDetail" table
Select * from Employee_Details

--2) Write a query to get only "FirstName" column from "EmployeeDetail" table
Select First_name from employee_Details


--3) Write a query to get FirstName in upper case as "First Name".
Select UPPER(First_name) from employee_Details


--4) Write a query to get FirstName in upper case as "First Name".
Select UPPER(First_name)'First Name' from employee_Details


--5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)
Select first_name + ' ' + last_name 'Name' from employee_details


--6) Select employee detail whose name is "Vikas
Select * from employee_Details where First_name = 'Vikas'


--7) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
Select * from employee_Details where First_name like 'a%'


--8) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
Select * from employee_Details where First_name like 'a%'


--9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
Select * from employee_Details where First_name like '%h'



--10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
Select first_name from employee_Details where first_name like '[A-P]%' order by first_name

--11)	 Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'
Select first_name from employee_Details where first_name not like '[A-P]%' order by first_name
--OR
Select first_name from employee_details where first_name like '[^A-P]%'


--12)	 Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. 
--       The Underscore(_) Wildcard Character represents any single character
Select * from employee_Details where Gender like '__le'


--13)	 Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
Select * from employee_Details where First_name like 'A____'


--14)	 Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".
Select * from employee_Details where First_name like '%\%'
Select * from employee_Details where First_name not like '%\%%'


--15)	 Get all unique "Department" from EmployeeDetail table
Select distinct Department from employee_Details


--16)	 Get the highest "Salary" from EmployeeDetail table.
Select Top 1 Salary from Employee_Details Order by Salary Desc


--17)	 Get the lowest "Salary" from EmployeeDetail table
Select Top 1 Salary from Employee_Details Order by Salary


--18)	 Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
Select Joining_Data, Convert (varchar(max), Joining_Data, 3) As Convert_Date from Employee_Details


--19)	Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"
Select Joining_Data, Convert (varchar(max), Joining_Data, 21) As Convert_Date from Employee_Details


--21)	Get only Year part of "JoiningDate"
Select Joining_Data, DATEPART (yy, Joining_Data) AS 'Year'from employee_Details


--22)	Get only Month part of "JoiningDate”
Select Joining_Data, DATEPART (MM, Joining_Data) AS 'Month' from employee_Details


--23)	Get system date
Select GETDATE()



--24)	Get the first name, current date, joiningdate and diff between current date and joining date in months.
Select first_name, GETDATE(), joining_data, datediff(MONTH, joining_data, GETDATE())'months_worked' from employee_details


--25)	Get the first name, current date, joiningdate and diff between current date and joining date in Years.
Select first_name, GETDATE(), joining_data, datediff(Year, joining_data, GETDATE())'Years_worked' from employee_details


--26)	 Get all employee details from EmployeeDetail table whose joining year is 2013
Select * from Employee_Details where YEAR(Joining_Data) = 2013


--27)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
Select * from Employee_Details where MONTH(Joining_Data) = 1


--28)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
Select * from Employee_Details where MONTH(Joining_Data) = 1


--29)	Get how many employee exist in "EmployeeDetail" table
Select COUNT(First_name) from employee_details

--31. Select only one/top 1 record from "EmployeeDetail" table
Select Top 1 * from employee_Details


--32. Select all employee detail with First name "Vikas","Ashish", and "Nikhil".
Select * from employee_Details where First_name in ('Vikas', 'Ashish', 'Nikhil')



--33. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"
Select * from employee_Details where First_name not in ('Vikas', 'Ashish', 'Nikhil')



--34. Select first name from "EmployeeDetail" table after removing white spaces from right side
Select RTRIM(first_name) from employee_details


--35. Select first name from "EmployeeDetail" table after removing white spaces from left side
Select LTRIM(first_name) from employee_details



--36. Display first name and Gender as M/F.(if male then M, if Female then F)
Select first_name, Gender,
CASE Gender
When 'Male' Then 'M'
When 'Female' Then 'F'
Else 'Others'
End as 'New_Gender'
from employee_details



--38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
Select * from employee_details where salary > 600000



--39. Get employee details from "EmployeeDetail" table whose Salary less than 700000
Select * from employee_details where salary < 700000



--40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000
Select * from employee_details where salary between 500000 and 600000

-------------------------------------------------------------------------------------------------------------------------------
Create Table Project_Details (ProjectID int Primary Key, Emp_DetailID int, Project_name varchar(max))


Insert into Project_Details Values (1, 1, 'Task Track')
Insert into Project_Details Values (2, 1, 'CLP')
Insert into Project_Details Values (3, 1, 'Survey Management')
Insert into Project_Details Values (4, 2, 'HR Management')
Insert into Project_Details Values (5, 3, 'Task Track')
Insert into Project_Details Values (6, 3, 'GRS')
Insert into Project_Details Values (7, 3, 'DDS')
Insert into Project_Details Values (8, 4, 'HR Management')
Insert into Project_Details Values (9, 6, 'GL Management')

--41. Give records of ProjectDetail table
Select * from Project_Details


--42. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.
Select Department, SUM(Salary) 'Total_Salary' from employee_details Group by Department


--43. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.
Select Department, SUM(Salary) 'Total_Salary' from employee_details Group by Department order by Total_Salary




--44. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary
Select Department, SUM(Salary) 'Total_Salary' from employee_details Group by Department order by Total_Salary DESC


--45. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.
Select Department, SUM(Salary)'Total_Salary', Count(first_name) 'Total EMP'  from employee_details Group by Department


--46. Get department wise average salary from "EmployeeDetail" table order by salary ascending
Select Department, AVG(Salary) 'AVG_Salary' from employee_details Group by Department order by AVG_Salary

--47 . Get department wise maximum salary from "EmployeeDetail" table order by salary ascending
Select Department, MAX(Salary) 'MAX_Salary' from employee_details Group by Department Order by MAX_Salary


--48. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
Select Department, MIN(Salary) 'MIN_Salary' from employee_details Group by Department Order by MIN_Salary


--49. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
Select Department, MIN(Salary) 'MIN_Salary' from employee_details Group by Department Order by MIN_Salary


--50. Join both the table that is Employee and ProjectDetail based on some common paramter
Select * from Employee_Details inner join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID


--51. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.
Select First_name, Project_name from Employee_Details inner join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Order by First_name


--52. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.
Select First_name, Project_name from Employee_Details Full join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Order by First_name


--53) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"
Select First_name, Project_name from Employee_Details inner join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Where Project_name is null Order by First_name



--54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail
Select First_name, Project_name from Project_Details Left join Employee_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Order by First_name



--55. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
Select * from Employee_Details Full join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID


--56. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
Select first_name, Project_name from Employee_Details Full join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID




--57.Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
Select first_name, Project_name from Employee_Details Full join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID


--58.Write down the query to fetch EmployeeName & Project who has assign more than one project
Select first_name, Count(Project_name)'No of Project' from Employee_Details Left join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Group by first_name having Count(Project_name)>1


--59. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName
Select Project_name, Count(first_name)'No of Emp' from Employee_Details Left join Project_Details on Employee_Details.Emp_Id=Project_Details.Emp_DetailID
Group by Project_name having Count(first_name)>1



--60. Apply Cross Join in Both the tables
Select * from Employee_details Cross Join Project_Details