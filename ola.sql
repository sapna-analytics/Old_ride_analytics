create database ola

use olA

select * from bookings

-- 1. Retrieve all successful bookings:

select * from bookings
where booking_status = 'success'

-- 2. Find the average ride distance for each vehicle type:

select vehicle_type, avg(ride_distance) as Avg_ride_distance
from bookings
group by vehicle_type

-- 3. Get the total number of cancelled rides by customers:

select count(*) as Rides_cancelled_by_driver from bookings
where booking_status = 'canceled by driver'

-- 4. List the top 5 customers who booked the highest number of rides:

select top 5 customer_id, count(booking_id) as Total_Bookings
from Bookings
group by Customer_ID
order by count(booking_id) desc

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(*) as c_count
from Bookings
where canceled_rides_by_driver = 'personal & car related issue'

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select max(driver_ratings) as max_ratings
from Bookings
where Vehicle_Type = 'prime sedan'

select min(driver_ratings) as max_ratings
from Bookings
where Vehicle_Type = 'prime sedan'

-- 7. Retrieve all rides where payment was made using UPI:

select * 
from Bookings
where Payment_Method = 'upi'

-- 8. Find the average customer rating per vehicle type:

select Vehicle_Type, avg(customer_rating) as Customer_ratings 
from Bookings
group by Vehicle_Type

-- 9. Calculate the total booking value of rides completed successfully:

select sum(booking_value) as Booking_value
from Bookings
where Booking_Status = 'success'

-- 10. List all incomplete rides along with the reason:

select Booking_ID, Incomplete_Rides_Reason 
from Bookings
where Incomplete_Rides = 'yes'