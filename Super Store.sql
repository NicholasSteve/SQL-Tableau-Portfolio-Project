select count(*)
from [dbo].[Orders$]

select *
from [dbo].[Orders$]
order by 1

select [Order ID],count(*)
from[dbo].[Orders$]
group by [Order ID]
having count(*)>1

select *
from [dbo].[Orders$]
where [Order ID]= 'AG-2013-8490'

select [Row ID],[Order ID], count (*)
from [dbo].[Orders$]
group by [Row ID],[Order ID]
having count(*)> 1

select * from [dbo].[Orders$]
where [Ship Date]< [Order Date]

select distinct [Ship Mode] from[dbo].[Orders$]

select min(a.NumOfDays), max(a.NumOfDays)
from(
select DATEDIFF (Day, [Order Date], [Ship Date]) as NumOfDays, *
from [dbo].[Orders$]
where [Ship Mode] = 'Same Day' ) a

select [Customer ID], [Order ID] , count (*)
from[dbo].[Orders$]
group by  [Customer ID], [Order ID] 
order by [Customer ID]

select *
from [dbo].[Orders$]
where [Order ID]= 'CA-2011-128055'