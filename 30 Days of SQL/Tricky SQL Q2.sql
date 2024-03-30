DROP TABLE source;
CREATE TABLE source
    (
        id      int,
        name    varchar(1)
    );

DROP TABLE target;
CREATE TABLE target
    (
        id      int,
        name    varchar(1)
    );

INSERT INTO source VALUES (1, 'A');
INSERT INTO source VALUES (2, 'B');
INSERT INTO source VALUES (3, 'C');
INSERT INTO source VALUES (4, 'D');

INSERT INTO target VALUES (1, 'A');
INSERT INTO target VALUES (2, 'B');
INSERT INTO target VALUES (4, 'X');
INSERT INTO target VALUES (5, 'F');


with cte as 
(
select source.id,
case when target.id is null then 'New in Source' end as commnet
from source left join target on source.id = target.id
Union
select target.id, 
case when source.id is null then 'New in Target' end as commnet
from target left join source on source.id = target.id
union
select source.id, 
case when source.name <> target.name then 'Mistmatch' end as commnet
from target join source on source.id = target.id)
select * from cte where commnet is not null;