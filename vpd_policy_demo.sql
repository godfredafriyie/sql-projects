
-- Create Tables

create table department (
 dep_id int primary key,
 name  varchar2(30)
);


create table employee (
 dep_id references department,
 name  varchar2(30)
);


create table department_secrets (
 dep_id references department,
 secret varchar2(30)
);


-- FILL IN THE TABLES
insert into department values (1, 'Professor');
insert into department values (2, 'Current User');
insert into department values (3, 'Student');


insert into employee values (1, 'C##RWGIBSON');
insert into employee values (2, 'gafriyie');
insert into employee values (3, 'jpmalone');


insert into department_secrets values (1, 'Professor Data #1' );
insert into department_secrets values (1, 'Professor Data #2' );
insert into department_secrets values (2, 'Personal Data #1'  );
insert into department_secrets values (2, 'Personal Data #2'  );
insert into department_secrets values (3, 'Student Data #1');
insert into department_secrets values (3, 'Student Data #2');

CREATE OR REPLACE CONTEXT department_ctx USING department_ctx_pkg;

CREATE OR REPLACE PACKAGE department_ctx_pkg IS
  PROCEDURE set_dep_id;
END;
/
CREATE OR REPLACE PACKAGE BODY department_ctx_pkg IS
  PROCEDURE set_dep_id AS
    department_id NUMBER;
  BEGIN
    SELECT dep_id INTO department_id
    FROM GAFRIYIE.employee
    WHERE UPPER(name) = SYS_CONTEXT('USERENV','SESSION_USER');
    
    DBMS_SESSION.SET_CONTEXT('department_ctx','dep_id', department_id);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN NULL;
      END set_dep_id;
END;
/
CREATE OR REPLACE TRIGGER set_dep_id_ctx_trig
AFTER LOGON ON SCHEMA
BEGIN
  department_ctx_pkg.set_dep_id;
END;
/
CREATE OR REPLACE FUNCTION get_user_secret(
  schema_p IN VARCHAR2,
  table_p  IN VARCHAR2
) RETURN VARCHAR2 AS
  secret_pred VARCHAR2(400);
BEGIN
  secret_pred := 'dep_id = SYS_CONTEXT(''department_ctx'',''dep_id'')';
  RETURN secret_pred;
END;
/
BEGIN
  DBMS_RLS.ADD_POLICY(
    object_schema   => 'GAFRIYIE',
    object_name     => 'DEPARTMENT_SECRETS',
    policy_name     => 'secret_policy',
    function_schema => 'GAFRIYIE',
    policy_function => 'get_user_secret',
    statement_types => 'SELECT'
  );
END;
/
GRANT SELECT ON GAFRIYIE.employee TO C##RWGIBSON;
GRANT SELECT ON GAFRIYIE.department TO C##RWGIBSON;
GRANT SELECT ON GAFRIYIE.department_secrets TO C##RWGIBSON;
