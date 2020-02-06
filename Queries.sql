select * from usairlineflights2.flights;
select distinct origin, avg(ArrDelay), avg(DepDelay) from usairlineflights2.flights group by origin;
select origin, colYear, colMonth, avg(ArrDelay) from usairlineflights2.flights group by origin, colYear, colMonth order by origin,colYear,colMonth;
select city, colYear, colMonth, avg(ArrDelay) from usairports inner join flights on (usairports.IATA=flights.origin) group by city , colYear, colMonth order by city,colYear,colMonth;