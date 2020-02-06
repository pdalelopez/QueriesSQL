select * from usairlineflights2.flights;
select distinct origin, avg(ArrDelay), avg(DepDelay) from usairlineflights2.flights group by origin;