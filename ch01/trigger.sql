create temp table log(x);

create temp trigger foods_update_log after update of name on foods
begin
    insert into log values('updated foods: old name=' || old.name || ', new name=' || new.name);
end;

begin;
update foods set name='JUJYFRUIT' where name='JujyFruit';
select * from log;
rollback;