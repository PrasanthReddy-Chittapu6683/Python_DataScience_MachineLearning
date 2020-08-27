select * from world.country;
select count(*) from world.city where District="Maharashtra";

select cnt.Name, count(ci.Name) from world.country cnt
join world.city ci on cnt.Code = ci.CountryCode
group by cnt.Name 
order by count(ci.Name) desc;

select * from world.Country where population = (select max(population) from world.country);

select language,count(*) as number from world.countrylanguage 
group by language 
order by number desc;

select language,count(*) as number from world.country  c inner join world.countrylanguage l on c.code = l.CountryCode 
where l.IsOfficial = "T"
group by l.Language 
order by number desc;






select * from world.countrylanguage;

select cnt.Name, max( lan.Percentage ) from world.country cnt
join world.countrylanguage lan on cnt.Code = lan.CountryCode
where lan.Percentage between 80 and 90;
 
 select * from world.countrylanguage where IsOfficial = "T" and Percentage between 80 and 90;
 
 Select count(*) from world.city 
 inner join world.country on city.CountryCode = country.code 
 inner join world.countrylanguage on country.code = countrylanguage.CountryCode
where
country.Continent = "North America" 
and 
countrylanguage.language = "English";


select ID, Name, Population 
from world.city 
where Name="Phoenix" or Name="Los Angeles" or Name="Chicago" or Name="New York"
order by Population asc;

select count(*) from world.country
where Code is null or Name is null or Continent is null or region is null 
or surfacearea is null or indepYear is null or Population is null 
or LifeExpectancy is null or GNP is null or GNPOld is null or LocalName is null 
or GovernmentForm is null or HeadofState is null or Capital is null or Code2 is null;

select count(*) from world.country where name like "I%A";


select continent, sum(SurfaceArea) from world.country group by Continent order by sum(SurfaceArea) desc;


Alter table companydb.employee
Add col varchar(15)
Default 'upgrad' ;

Select * from companydb.employee
Where col = 'upgrad';

Select concat (reverse(fname) , ' ', UPPER(lname))
From companydb.employee
where dno=1;

Select *,extract(year from bdate) as YEARBIRTH from companydb.employee
Order by extract(year from bdate) desc;