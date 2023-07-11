select count(*)
from room_category
where Room_Type = "Single";

select count(*)
from room_category
where Room_Type = "Double";

select count(*)
from room_category
where Room_Type = "Suite";

select ca.city, count(Customer_Id) as customerNumber
from customer as c left join room_category as ca
on c.room_Id = ca.room_Id
group by ca.city
order by count(Customer_Id) desc;


select ca.city, max(Quantity) as BookingNumber
from booking as b left join room_category as ca
on b.room_Id = ca.room_Id
group by ca.city
limit 1;

select ca.city, min(Quantity) as BookingNumber
from booking as b left join room_category as ca
on b.room_Id = ca.room_Id
group by ca.city
limit 1;

select ca.city, sum(Quantity) as BookingNumber
from booking as b left join room_category as ca
on b.room_Id = ca.room_Id
group by ca.city
order by sum(Quantity) desc;

select ca.city, count(Quantity) as BookingNumber
from booking as b left join room_category as ca
on b.room_Id = ca.room_Id
group by ca.city
order by count(Quantity) desc;

select count(*)
from booking;

select count(*)
from room_category;

select count(*)
from customer







