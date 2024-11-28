# Ola Data Analysis Project

This project involves analyzing Ola ride-hailing data to extract valuable insights and provide actionable findings. The analysis focuses on various aspects, including ride volume, booking status, vehicle type performance, customer and driver ratings, and revenue distribution. The dataset is derived from a synthetic simulation of Ola rides in Bengaluru, with key attributes like booking ID, vehicle type, pickup/drop locations, cancellation reasons, and more.

## Table of Contents

- [Project Overview](#project-overview)
- [Data Description](#data-description)
- [SQL Queries](#sql-queries)
- [Power BI Visualizations](#power-bi-visualizations)
- [Usage](#usage)
- [License](#license)

## Project Overview

This project simulates Ola's ride data for Bengaluru over one month, including various vehicle types (e.g., Auto, Prime Plus, Bike, etc.). The data contains information on bookings, cancellations, incomplete rides, ratings, and payment methods.

Key objectives:
- Analyze booking success rates, cancellations, and ride distances.
- Evaluate customer and driver ratings.
- Create visualizations using Power BI to present ride volume, vehicle performance, and revenue insights.

## Data Description

The dataset consists of the following columns:
- **Date**: Date of the booking
- **Time**: Time of the booking
- **Booking ID**: Unique booking identifier
- **Booking Status**: Status of the booking (e.g., Success, Canceled by Customer, Canceled by Driver)
- **Vehicle Type**: Type of vehicle used for the ride (e.g., Auto, Prime Sedan, Bike, etc.)
- **Pickup Location**: Location where the ride starts
- **Drop Location**: Location where the ride ends
- **V_TAT**: Vehicle Time to Arrive (time taken to arrive at the pickup location)
- **C_TAT**: Customer Time to Arrive (time taken to arrive at the customer’s pickup location)
- **Cancelled Rides by Customer**: Percentage of rides canceled by the customer
- **Cancelled Rides by Driver**: Percentage of rides canceled by the driver
- **Incomplete Rides**: Percentage of rides that were incomplete
- **Booking Value**: The value of the ride (fare charge)
- **Ride Distance**: Total distance covered during the ride
- **Driver Ratings**: Rating given by the driver
- **Customer Ratings**: Rating given by the customer

## SQL Queries

The following SQL queries have been created to perform key analysis tasks:
1. Retrieve all successful bookings.
2. Find the average ride distance for each vehicle type.
3. Get the total number of canceled rides by customers.
4. List the top 5 customers who booked the highest number of rides.
5. Get the number of rides canceled by drivers due to personal or car-related issues.
6. Find the maximum and minimum driver ratings for Prime Sedan bookings.
7. Retrieve all rides where payment was made using UPI.
8. Find the average customer rating per vehicle type.
9. Calculate the total booking value of rides completed successfully.
10. List all incomplete rides along with the reason.

The queries are designed to extract and analyze the core data points from the database, which are then used to generate insights in Power BI.

## Power BI Visualizations

Several visualizations have been created using Power BI to provide insights into the ride data:
- **Ride Volume Over Time**: A time-series chart showing the number of rides over time.
- **Booking Status Breakdown**: A pie chart that breaks down the different statuses of bookings (e.g., success, canceled by customer, canceled by driver).
- **Top 5 Vehicle Types by Ride Distance**: A bar chart showing the top vehicle types based on the total distance covered.
- **Average Customer Ratings by Vehicle Type**: A column chart showing the average customer ratings for each vehicle type.
- **Cancelled Rides Reasons**: A bar chart displaying the reasons for ride cancellations by both customers and drivers.
- **Revenue by Payment Method**: A stacked bar chart showing the distribution of revenue based on payment methods (e.g., Cash, UPI, Credit Card).
- **Top 5 Customers by Total Booking Value**: A leaderboard showing customers with the highest total booking value.

## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/username/Ola-Data-Analysis.git
   ```
2. Set up the database by running the SQL queries provided in the **SQL Queries** section to create the necessary tables and views.
3. Load the dataset into your database and use the SQL queries to analyze the data.
4. Open the Power BI file to view the visualizations.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

