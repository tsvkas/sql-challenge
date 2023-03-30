-- create "departments" table

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);
-- create "employees" table

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);
-- create "dept_emp" table

CREATE TABLE "dept_emp" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);
-- create "dept_manager" table

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);
-- create "salaries" table

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" BIGINT   NOT NULL,
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);
-- create "titles" table

CREATE TABLE "titles" (
    "title_id" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    FOREIGN KEY("title_id") REFERENCES "employees" ("emp_title")
);