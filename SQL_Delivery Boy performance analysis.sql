

select * from cleaned_test

select * from updated

select * from updated
--- total records in cleaned_test table --- 11399


select count(*) as total_rows from cleaned_test

select * from cleaned_test

select distinct * from cleaned_test

-- identify null values from table name cleaned_test---0

select id, count(*) as total_null_values from cleaned_test
where id is null
group by id

select Delivery_person_ID, count(*) as total_null_values from cleaned_test
where Delivery_person_ID is null
group by Delivery_person_ID

select Delivery_person_Age, count(*) as total_null_values from cleaned_test
where Delivery_person_Age is null
group by Delivery_person_Age


select Delivery_person_Ratings, count(*) as total_null_values from cleaned_test
where Delivery_person_Ratings is null
group by Delivery_person_Ratings

select * from cleaned_test

----  Check for Duplicate Records in cleaned_test Table---0
select id,count(*) as duplicate_ids from cleaned_test
group by ID
having count(*) > 1 


select * from cleaned_test

--- types of weathers---7

select distinct Weather from cleaned_test

---types of vechicle--4

select distinct Type_of_vehicle from cleaned_test

--types of Road_traffic_density--5

select distinct Road_traffic_density from cleaned_test

--types of Vehicle_traffic_density--4

select distinct Vehicle_condition from cleaned_test

--types of type_of_order--4

select distinct Type_of_order from cleaned_test

--types of type---3
select distinct Festival from cleaned_test

---null values in festival --65
select festival,count(*) as fest from cleaned_test
 where festival is null
 group by festival

--null value in name column ---0
select * from cleaned_test
select Name,count(*) as name_ from cleaned_test
where Name is null
group by Name

select * from cleaned_test 

--- nan values in delivery person age ----491
select Delivery_person_Age,count(*) as total_nan_count from cleaned_test
where Delivery_person_Age like 'nan'
group by Delivery_person_Age

--- 
select * from cleaned_test

-- nan values in delivery person ratings-- 507
select Delivery_person_Ratings,count(*) as total_nan_count from cleaned_test
where Delivery_person_Ratings like 'nan'
group by Delivery_person_Ratings

---nan values in time ordered --- 444
select Time_Orderd,count(*) as total_nan_count from cleaned_test
where Time_Orderd is null
group by Time_Orderd


--- nan values in weather---158
select Weather,count(*) as total_nan_count from cleaned_test
where Weather like 'nan'
group by Weather


--- nan values in road traffic density---154
select Road_traffic_density,count(*) as total_nan_count from cleaned_test
where Road_traffic_density like 'nan'
group by Road_traffic_density

select * from cleaned_test

--- first order placed --11-02-2022 ---- last order placed --- 06-04-2022
select max(Order_Date) as last_order_placed,min(Order_Date) as first_order_placed from cleaned_test

--- total days of data--- 54 
select datediff(day,max(Order_Date),min(Order_Date))from cleaned_test

---total months of data-- 2
select datediff(MONTH,max(Order_Date),min(Order_Date))from cleaned_test




 -----updated table

select * from updated
  ---totals row in updated table--2442
select count(*) as total_rows from updated

 ----identify unique values--2442
 ---there are no duplicate values in updated table 
 select * from updated

 select distinct * from updated

 --identify null values--

 ---null values in Id column--0

   
select ID, count(*) as id_ from updated
where ID is null
group by ID

select * from updated

--null values in delivery_person_id --0
select Delivery_person_Id,count(*) as person_id from updated
where Delivery_person_id is null
group by Delivery_person_id

---0-----
select Delivery_person_Age,count(*) from updated
where Delivery_person_Age is null
group by Delivery_person_Age


select * from updated
---null values ---94
select Delivery_person_Ratings,count(*) from updated
where Delivery_person_Ratings is null
group by Delivery_person_Ratings

----null values in time ordered-- 89
select Time_Orderd,count(*) from updated
where Time_Orderd is null
group by Time_Orderd


---0----
select Time_Order_picked,count(*) from updated
where Time_Order_picked is null
group by Time_Order_picked

select * from updated

-----null values---54
select multiple_deliveries,count(*) from updated
where multiple_deliveries is null
group by multiple_deliveries

---0-----
select Time_taken_min,count(*) from updated
where Time_taken_min is null
group by Time_taken_min







select * from updated

---values in weather conditions--- 7

select distinct weatherconditions from updated

--values in Road_traffic_Density--5

select distinct Road_traffic_density from updated

--values in vehicle_condtion --4

select distinct Vehicle_condition from updated

--values in type_of_ order--4

select distinct Type_of_order from updated

--values in type_of_vehicle --4

select distinct Type_of_vehicle from updated

--values in type multiple_deliveries--5

select distinct multiple_deliveries from updated

-----null values---54
select multiple_deliveries,count(*) from updated
where multiple_deliveries is null
group by multiple_deliveries

---types of values in festival---3
select distinct festival from updated

----types of values in city----4
select  distinct City from updated

----- data cleaning-----

---- cleaned_test--

select * from cleaned_test

select id,Delivery_person_ID,Delivery_person_Age,count(*) from cleaned_test
where Delivery_person_Age like 'nan'
group by id,Delivery_person_ID,Delivery_person_Age


select avg( Delivery_person_Age ) as average_age from cleaned_test

select * from cleaned_test
----491-----
update cleaned_test
set Delivery_person_Age = 30
where Delivery_person_Age = 'nan'

alter table cleaned_test
alter column delivery_person_age int

select * from cleaned_test


select Delivery_person_Age,count(*) from cleaned_test
where Delivery_person_Age like 'nan'
group by Delivery_person_Age

-----507----
select Delivery_person_Ratings,count(*) from cleaned_test
where Delivery_person_Ratings like 'nan'
group by Delivery_person_Ratings


--507----
update cleaned_test
set Delivery_person_Ratings = 4.6
where Delivery_person_Ratings = 'nan'

alter table cleaned_test
alter column delivery_person_ratings float

select * from cleaned_test

select Delivery_person_Ratings,count(*) from cleaned_test
where Delivery_person_Ratings like 'nan'
group by Delivery_person_Ratings


---158---
select Weather,count(*) from cleaned_test
where Weather like'nan'
group by Weather

select Weather,count(*) from cleaned_test
group by Weather
order by count(*) desc

---158---
update cleaned_test
set Weather = 'sunny'
where Weather = 'nan'

select * from cleaned_test

select Weather,count(*) from cleaned_test
where Weather like 'nan'
group by Weather

-----154
select Road_traffic_density,count(*) from cleaned_test
where Road_traffic_density like 'nan'
group by Road_traffic_density

select Road_traffic_density,count(*) from cleaned_test
group by Road_traffic_density
order by count(*) desc
---154----
update cleaned_test
set Road_traffic_density = 'low'
where Road_traffic_density = 'nan'


select Road_traffic_density,count(*) from cleaned_test
where Road_traffic_density like 'nan'
group by Road_traffic_density

---238--
select multiple_deliveries,count(*) from cleaned_test
where multiple_deliveries like 'nan'
group by multiple_deliveries

--238--
update  cleaned_test
set multiple_deliveries = 1
where multiple_deliveries = 'nan'

alter table cleaned_test
alter column multiple_deliveries float
select * from cleaned_test

select * from cleaned_test

---444---
select Time_Orderd,count(*) from cleaned_test
where Time_Orderd is null
group by Time_Orderd

select * from cleaned_test

---444--
UPDATE cleaned_test
SET Time_Orderd = DATEADD(MINUTE, -10, Time_Order_picked)
WHERE Time_Orderd IS NULL;

select Time_Orderd,count(*) from cleaned_test
where Time_Orderd is null
group by Time_Orderd


select * from cleaned_test
----delete column21,column22,column23 because they dont contain any values
ALTER TABLE cleaned_test
DROP COLUMN column21

alter table cleaned_test
drop column column22

alter table cleaned_test
drop column column23

select * from cleaned_test
----data cleaning for updated table

select * from updated
---delete the column1 because it dont have any usefull information
alter  table updated
drop column column1

---round off the column delivery person rating because its show more values after decimal
UPDATE updated
SET Delivery_person_Ratings = ROUND(Delivery_person_Ratings,2);


select * from updated
---- delete a column name time_taken_min because we create a new column for this 
alter table updated
drop column time_taken_min

---change the column name time_taken_min_2  to time_taken

EXEC sp_rename 'updated.Time_taken_min_2', 'Time_taken', 'COLUMN';


---null values ---94
select Delivery_person_Ratings,count(*) from updated
where Delivery_person_Ratings is null
group by Delivery_person_Ratings


select * from updated
----average rating --4.6---
select avg(delivery_person_ratings) as avg_ratings from updated

---replace the null values into avg raings(4.6)---
----94----
update updated
set delivery_person_ratings = 4.6
where Delivery_person_Ratings is null

----null values in time ordered-- 89
select Time_Orderd,count(*) from updated
where Time_Orderd is null
group by Time_Orderd

---89---
update updated
set Time_Orderd = DATEADD(minute,-10,time_order_picked)
where Time_Orderd is null

select * from updated

----54----
select multiple_deliveries, count(*) from updated
where multiple_deliveries is null
group by multiple_deliveries


---54----
update updated
set multiple_deliveries = 1
where multiple_deliveries  is null

select * from updated


-------universal table----

select * from cleaned_test
select * from updated

--29813---
select * from cleaned_test as a
left join updated as b 
on a.Delivery_person_ID = b.Delivery_person_ID

----28256----
select * from cleaned_test as a
inner join updated as b 
on a.Delivery_person_ID = b.Delivery_person_ID

---28256

select a.ID,b.ID,a.Delivery_person_ID,a.Delivery_person_Age,
a.Delivery_person_Ratings,
a.Restaurant_latitude,a.Restaurant_longitude,
a.Delivery_location_latitude,a.Delivery_location_longitude,
a.Order_Date,a.Time_Orderd,a.Time_Order_picked,a.Weather,b.Weatherconditions,a.Road_traffic_density,b.Road_traffic_density,a.Vehicle_condition,b.Vehicle_condition,a.Type_of_order,b.Type_of_order,
a.Type_of_vehicle,b.Type_of_vehicle,a.multiple_deliveries,a.Festival,b.Festival,a.City,b.City,b.Time_taken  from cleaned_test as a
inner join updated as b 
on a.Delivery_person_ID = b.Delivery_person_ID


-----28256---


select a.ID,b.ID as order_id,a.Delivery_person_ID,a.Delivery_person_Age,
a.Delivery_person_Ratings,
a.Restaurant_latitude,a.Restaurant_longitude,
a.Delivery_location_latitude,a.Delivery_location_longitude,
a.Order_Date,a.Time_Orderd,a.Time_Order_picked,a.Weather,b.Weatherconditions,a.Road_traffic_density,b.Road_traffic_density as num_road_traffic_density ,a.Vehicle_condition,a.Type_of_order,b.Type_of_order as num_type_of_order,
a.Type_of_vehicle,b.Type_of_vehicle as num_type_of_vechicle,a.multiple_deliveries,a.Festival,b.Festival as Festival_season ,a.City,b.City as num_city,b.Time_taken into final_table  from cleaned_test as a
inner join updated as b 
on a.Delivery_person_ID = b.Delivery_person_ID


--28256
select * from final_table
---28239---
select distinct * from final_table

select * from final_table

select id,Delivery_person_ID,count(*) as duplicate_ids from final_table
group by Delivery_person_ID,ID
having count(*) > 1 
----17--- duplicate rows in final table---

WITH CTE AS (
    SELECT distinct *, COUNT(*) OVER (PARTITION BY id,order_id,delivery_person_id) AS duplicate_count
    FROM final_table
)
SELECT *
FROM CTE
WHERE duplicate_count > 1;

-----68-------
WITH CTE AS (
    SELECT *, 
           COUNT(*) OVER (PARTITION BY id, order_id, delivery_person_id) AS duplicate_count,
           ROW_NUMBER() OVER (PARTITION BY id, order_id, delivery_person_id ORDER BY (SELECT NULL)) AS row_num
    FROM final_table
)
DELETE FROM final_table
WHERE id IN (
    SELECT id FROM CTE WHERE duplicate_count > 1 AND row_num > 1
);

----28188----
select * from final_table

select distinct * from final_table

select id from final_table

---9825---
select distinct ID from final_table

---2318----
WITH CTE AS (
    SELECT 
        id,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS row_num,
        COUNT(*) OVER (PARTITION BY id) AS duplicate_count
    FROM final_table
)
DELETE FROM final_table
WHERE id IN (
    SELECT id FROM CTE WHERE duplicate_count > 1 AND row_num > 1
);

--2318--
select * from final_table


----high level matrix(kpi)----

---average delivery person age--29

select avg(Delivery_person_Age) from final_table

----max age - 45 , min age-- 15

select max(Delivery_person_Age) as older_person_age,min(Delivery_person_Age) as younger_person_age from final_table

--- average delivery ratings---4.62

select avg(Delivery_person_Ratings) from final_table

--- top rated delivery person id ---BHPRES18DEL01
select  top 1 Delivery_person_ID,max(Delivery_person_Ratings) as max_rating_person
from final_table
group by Delivery_person_ID
order by max_rating_person desc

---lowest rated delivery person id---COIMBRES19DEL01
select  top 1 Delivery_person_ID,min(Delivery_person_Ratings) as min_rating_person
from final_table
group by Delivery_person_ID
order by min_rating_person asc

select * from final_table

select  top 5 Delivery_person_ID,max(Delivery_person_Ratings) as max_rating_person
from final_table
group by Delivery_person_ID
order by max_rating_person desc



select  top 5 Delivery_person_ID,min(Delivery_person_Ratings) as min_rating_person
from final_table
group by Delivery_person_ID
order by min_rating_person asc


select * from final_table

select  Weather,count(*) as highest_deliveries_in_weather from final_table
group by Weather
order by count(*) desc


select Road_traffic_density,count(*) as highest_road_density_ from final_table
group by Road_traffic_density
order by count(*) desc

select Type_of_order,count(*) as highest_type from final_table
group by Type_of_order
order by count(*) desc

select * from final_table

select Type_of_vehicle,count(*) as highest_type from final_table
group by Type_of_vehicle
order by count(*) desc


select City,count(*) as highest_type from final_table
group by City
order by count(*) desc

select top 5 Delivery_person_ID,max(multiple_deliveries) as highest_delivery from final_table
group by Delivery_person_ID
order by highest_delivery desc


select * from final_table

select  top 5 Delivery_person_ID,min(Time_taken) as fastest_delivery_boys from final_table
group by Delivery_person_ID
order by fastest_delivery_boys asc

select  top 5 Delivery_person_ID,max(Time_taken) as slowest_delivery_boys from final_table
group by Delivery_person_ID
order by slowest_delivery_boys desc

select Vehicle_condition,count(*) as type_of_vehicle_condition from final_table
group by Vehicle_condition
order by count(*) desc