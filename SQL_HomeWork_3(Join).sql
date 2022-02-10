-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from salary
left join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null;


-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from salary 
left join employee_salary on employee_salary.salary_id = salary.id 
where employee_salary.id is null and employee_salary.id < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from roles_employee 
inner join employees on roles_employee.employee_id = employees.id 
inner join roles on roles_employee.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python developer';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%' and roles.role_name not like '%Automation%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Automation%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Senior%';

-- 15. ������� �������� Java �������������
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Java%';

-- 16. ������� �������� Python �������������
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Middle JS%';

-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Java%';

-- 20. ������� �������� Junior QA ���������
select role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Junior%QA%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like 'Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%JS%';

-- 23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 25. ������� ���������� QA ���������
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%Middle%';

-- 27. ������� ���������� �������������
select count(roles.role_name) from roles_employee 
left join employees on roles_employee.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%developer';

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from salary 
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where roles.role_name like '%developer';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
order by monthly_salary asc 

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by monthly_salary asc 

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by monthly_salary asc 

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from salary
left join employee_salary on salary.id = employee_salary.salary_id 
left join employees on employee_salary.employee_id = employees.id 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
where monthly_salary in(1100, 1500, 2000)
order by monthly_salary asc 