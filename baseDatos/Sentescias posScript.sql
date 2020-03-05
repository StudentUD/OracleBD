create table s_emp_title(
    emp_id number(7) not null, 
    title varchar2(25), start_date date,
    end_date date not null, dept_id number(22) not null,
    region_id number(22) not null, 
    manager_id number(7),CONSEC NUMBER(7) NOT NULL, 
    constraint S_EMP_TITLE_S_EMP_FK foreign  key(emp_id) references S_emp(id), 
    constraint S_EMP_TITLE_S_title_FK foreign  key(title) references S_title(title),
    constraint S_EMP_TITLE_S_DEPT_FK foreign  key(dept_id,region_id) references S_dept(id,region_id),
    constraint S_EMP_TITLE_S_SALARY_FK foreign  key(CONSEC) references S_SALARY(CONSEC),
    constraint S_EMP_TITLE_EMP_ID_CONSEC_ID PRIMARY KEY (emp_id,CONSEC)
);

INSERT INTO s_emp_title 
    (emp_id, title, end_date, dept_id, region_id, manager_id, CONSEC )
    (select   e.ID, E.TITLE,    DATEPAYMENT,     DEPT_ID,  REGION_ID,  MANAGER_ID,  CONSEC 
    from s_emp e, s_salary s where s.id=e.id);


Alter table  S_EMP disable constraint S_EMP_TITLE_FK;
Alter table  S_EMP drop constraint S_EMP_TITLE_FK;


ALTER TABLE S_EMP DISABLE CONSTRAINT S_DEP_REGION_FK; 
ALTER TABLE S_EMP DISABLE CONSTRAINT S_MANAGER_FK; 
ALTER TABLE S_EMP DROP CONSTRAINT S_DEP_REGION_FK; 
ALTER TABLE S_EMP DROP CONSTRAINT S_MANAGER_FK; 
ALTER TABLE S_EMP DROP COLUMN  DEPT_ID; 
ALTER TABLE S_EMP DROP COLUMN  REGION_ID;
ALTER TABLE S_EMP DROP COLUMN  MANAGER_ID;

ALTER TABLE S_SALARY DISABLE CONSTRAINT  SALARY_ID_FK; 
ALTER TABLE S_SALARY DROP CONSTRAINT  SALARY_ID_FK; 
ALTER TABLE S_SALARY DROP COLUMN  ID;

