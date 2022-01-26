--
--      usr_01 is only allowed access org_data's data
--      using the package usr_interface.
--
connect usr_01/secretGarden

-- ORA-00942: table or view does not exist

select * from org_data.tab_c;
select * from org_data.tab_p;

begin
   dbms_random.seed(2);
   org_data.usr_interface.insert_random_data;
   org_data.usr_interface.insert_random_data;
   org_data.usr_interface.insert_random_data;
end;
/

connect org_data/secretGarden

grant execute on org_data.ctx_pkg to usr_01;

select * from org_data.tab_c;
select * from org_data.tab_p;
