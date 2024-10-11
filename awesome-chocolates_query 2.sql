select * from sales;

select * from people;

select * from products;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.spid
from sales s
join people p on p.SPID = s.SPID;

select s.saleDate, s.amount, pr.product
from sales s
left join products pr on pr.pid = s.pid;

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team
from sales s
join people p on p.SPID = s.SPID
left join products pr on pr.pid = s.pid;

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team
from sales s
join people p on p.SPID = s.SPID
left join products pr on pr.pid = s.pid
where s.amount < 500
and p.team = 'Delish';

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team
from sales s
join people p on p.SPID = s.SPID
left join products pr on pr.pid = s.pid
where s.amount < 500
and p.team = '';

select s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
join geo g on g.geoid = s.geoid
where s.amount < 500
and p.team = ''
and g.geo in ('New Zealand','India')
order by saleDate;

