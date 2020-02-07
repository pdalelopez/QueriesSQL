select * from usairlineflights2.flights;
select  origin, avg(ArrDelay), avg(DepDelay) from usairlineflights2.flights group by origin;
select origin, colYear, colMonth, avg(ArrDelay) from usairlineflights2.flights group by origin, colYear, colMonth order by origin,colYear,colMonth;
select city, colYear, colMonth, avg(ArrDelay) from usairports inner join flights on (usairports.IATA=flights.origin) group by city , colYear, colMonth order by city,colYear,colMonth;
select UniqueCarrier, colYear, colMonth, SUM(Cancelled) as Total_Cancelled from flights group by UniqueCarrier, colYear, colMonth order by Total_Cancelled desc;
select TailNum, SUM(Distance) as Total_Distance from flights where TailNum not like '' group by TailNum order by Total_Distance desc limit 10;