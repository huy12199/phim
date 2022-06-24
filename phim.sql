
use ticketfilm;
select * from phim order by thoigian ;
-- câu 3
select * from phim where thoigian = (select max(thoigian) from phim); 
-- câu 4
select * from phim where thoigian = (select min(thoigian) from phim); 
-- câu5 
select ghe.soghe from ghe where soghe like'a%';
-- câu6

-- câu7
update phong set status = if(status = '1' , 'đang sử dụng' , if( status = '0', 'đang sửa', if(status = null ,'unknow','unknow'))) where idphong > 0; 
-- câu 8
select namephim from phim where length(namephim) between 15 and 25;
select namephim from phim where length(namephim) > 15 and length(namephim) < 26;
-- câu 9
select concat(status,'', namephong) as 'trạng thái phòng' from phong;
-- câu 10
create table tbRank (
select namephim,thoigian from phim order by namephim
);
-- câu 11
