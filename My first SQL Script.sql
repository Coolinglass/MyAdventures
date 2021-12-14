
use lokesh;
select * from apply;
select *
from (select sID, sName, GPA, GPA*(sizeHS/1000.0) as scaledGPA from student) G
where abs(G.scaledGPA - GPA) > 1.0;
select College.cName, state, GPA
from College, Apply, Student
where College.