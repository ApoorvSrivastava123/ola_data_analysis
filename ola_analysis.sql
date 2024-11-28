CREATE DATABASE ola;
USE ola;

 #1. Retrieve all successful bookings:
 CREATE VIEW successful_bookings AS
 SELECT * FROM booking
 WHERE Booking_Status = 'Success';
 SELECT * FROM successful_bookings;
 
 #2. Find the average ride distance for each vehicle type:
 CREATE VIEW average_ride_distance_for_each_vehicle AS
 SELECT Vehicle_Type, AVG(Ride_Distance) FROM booking GROUP BY Vehicle_Type;
 SELECT * FROM average_ride_distance_for_each_vehicle;
 
 
 #3. Get the total number of cancelled rides by customers:
 CREATE VIEW cancelled_rides_by_customers AS
 SELECT COUNT(*) FROM booking WHERE Booking_Status="Canceled by Customer";
 SELECT * FROM cancelled_rides_by_customers;
 
 
 #4. List the top 5 customers who booked the highest number of rides:
 CREATE VIEW top_5_customer AS
 SELECT Customer_ID, COUNT(Booking_ID) AS total_rides FROM booking 
 GROUP BY Customer_ID
 ORDER BY total_rides DESC LIMIT 5;
 SELECT * FROM top_5_customer;
 

 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW cancelle_ddrivers_personal_car_related_issues AS
SELECT COUNT(*) FROM booking WHERE Canceled_Rides_by_Driver="Personal & Car related issue";
SELECT * FROM cancelle_ddrivers_personal_car_related_issues;
 
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
  CREATE VIEW max_min_driver_ratings AS
 SELECT MAX(Driver_Ratings) AS max_rating, MIN(Driver_Ratings) AS min_rating FROM booking WHERE Vehicle_Type = "Prime Sedan"; 
 SELECT * FROM max_min_driver_ratings;
 
 
 #7. Retrieve all rides where payment was made using UPI:
 CREATE VIEW payment_upi AS
 SELECT * FROM booking WHERE Payment_Method="UPI";
 SELECT * FROM payment_upi;
 
 
 #8. Find the average customer rating per vehicle type:
 CREATE VIEW avg_customer_rating AS
 SELECT Vehicle_Type, AVG(Customer_Rating) FROM booking 
 GROUP BY Vehicle_Type;
 SELECT * FROM avg_customer_rating;
 
 
 
 #9. Calculate the total booking value of rides completed successfully:
 CREATE VIEW Total_booking_value AS
 SELECT SUM(Booking_Value) AS total_booking FROM booking WHERE Booking_Status ='Success';
 SELECT * FROM Total_booking_value;
 
 
 #10. List all incomplete rides along with the reason:
 CREATE VIEW incomplete_ride_reason AS 
 SELECT Booking_ID, Incomplete_Rides_Reason FROM booking WHERE Incomplete_Rides = "Yes";
 SELECT * FROM incomplete_ride_reason;
 
 
#1. Retrieve all successful bookings:
SELECT * FROM successful_bookings;
  
#2. Find the average ride distance for each vehicle type:
SELECT * FROM average_ride_distance_for_each_vehicle;
 
#3. Get the total number of cancelled rides by customers:
SELECT * FROM cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
SELECT * FROM top_5_customer;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM cancelle_ddrivers_personal_car_related_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM max_min_driver_ratings;

#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM payment_upi;

#8. Find the average customer rating per vehicle type:
 SELECT * FROM avg_customer_rating;
 
#9. Calculate the total booking value of rides completed successfully:
SELECT * FROM Total_booking_value;
 
 
 #10. List all incomplete rides along with the reason:
  SELECT * FROM incomplete_ride_reason;
 

 
 

