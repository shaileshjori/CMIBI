create table tab_invisible_col
(uname VARCHAR2(30),
passwd VARCHAR2(30) INVISIBLE,
passwd1 VARCHAR2(30) INVISIBLE);

INSERT INTO tab_invisible_col (uname,passwd)
values ('shailesh','shailesh@123');

select uname,passwd from tab_invisible_col where passwd='123';

create index idx_inv_col on tab_invisible_col(passwd);

alter table tab_invisible_col modify uname invisible;

select * from tab_invisible_col;

drop table tab_invisible_col;

appending in sql file to pull again
