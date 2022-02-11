connect the_dba/secretGarden

drop   user usr_hir_2 cascade;
drop   user usr_hir_1 cascade;

drop   role rol_hir_2_1_1 ;
drop   role rol_hir_1_1_1 ;
drop   role rol_hir_2_1   ;
drop   role rol_hir_1_1   ;
drop   role rol_hir_2     ;
drop   role rol_hir_1     ;

create role rol_hir_1     ;
create role rol_hir_2     ;
create role rol_hir_1_1   ;
create role rol_hir_2_1   ;
create role rol_hir_1_1_1 ;
create role rol_hir_2_1_1 ;

grant  rol_hir_1_1     to rol_hir_1;
grant  rol_hir_2_1     to rol_hir_2;

grant  rol_hir_1_1_1   to rol_hir_1_1;
grant  rol_hir_2_1_1   to rol_hir_2_1;

grant  create session  to rol_hir_1_1;
grant  create table    to rol_hir_2_1;

create user usr_hir_1 identified by secretGarden default tablespace data temporary tablespace temp quota unlimited on data;
create user usr_hir_2 identified by secretGarden default tablespace data temporary tablespace temp quota unlimited on data;

grant  rol_hir_1 to usr_hir_1;
grant  rol_hir_2 to usr_hir_1;
grant  rol_hir_1 to usr_hir_2;
grant  rol_hir_2 to usr_hir_2;

alter user usr_hir_2 default role rol_hir_1;
