use exam;
create table test_a(id numeric);
create table test_b(id numeric);
insert into test_a(id) values(10),(20),(30),(40),(50);
insert into test_b(id) values(10),(30),(50);
select * from test_a;
SELECT test_a.*
FROM test_a
LEFT JOIN test_b ON test_a.column_name = test_b.column_name
WHERE test_b.column_name IS NULL;
