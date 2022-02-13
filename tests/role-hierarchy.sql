connect usr_hir_1/secretGarden

select * from session_roles;
select * from session_privs;

create table t1 (a number);

connect usr_hir_2/secretGarden

select * from session_roles;
select * from session_privs;

-- ORA-01031: insufficient privileges
-- create table t1 (a number);

set role rol_hir_2_1;
select * from session_roles;
create table t1 (a number);
