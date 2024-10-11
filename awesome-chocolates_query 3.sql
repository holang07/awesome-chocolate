select geoID, sum(amount), avg(amount), sum(boxes)
from sales
group by geoID;

select g.geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on s.geoID = g.geoID
group by g.geo;

select pr.category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid=s.pid
group by pr.category, p.team
order by pr.category, p.team;

select pr.category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <>' '
group by pr.category, p.team
order by pr.category, p.team;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount' desc;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales
join products pr on pr.pid = s.pid
group by pr.product
order by 'Total Amount' desc
limit 10;