-- View the first 10 rows
SELECT * FROM TravelData LIMIT 10;

-- Count total bookings
SELECT COUNT(*) AS Total_Bookings FROM TravelData;

-- Check destinations
SELECT Destination, COUNT(*) AS Bookings 
FROM TravelData 
GROUP BY Destination 
ORDER BY Bookings DESC;

-- Check average package cost by travel type
SELECT Travel_Type, AVG(Package_Cost) AS Avg_Cost
FROM TravelData
GROUP BY Travel_Type;

-- Monthly Bookings
SELECT MONTH(Booking_Date) AS Booking_Month, count(*) AS Bookings
FROM TravelData
GROUP BY Booking_Month
ORDER BY Booking_Month;

-- Average package cost by destination
SELECT Destination ,  AVG(Package_Cost) AS Avg_Cost
FROM TravelData
GROUP BY Destination
ORDER BY Avg_Cost DESC;

-- Count of special requests
SELECT Special_Requests, COUNT(*) AS Count
FROM TravelData
WHERE Special_Requests != ''
GROUP BY Special_Requests
ORDER BY Count DESC;

-- Bookings by age group
SELECT Client_Age_Group, COUNT(*) AS Bookings
FROM TravelData
GROUP BY Client_Age_Group
ORDER BY Client_Age_Group;

SELECT *
FROM TravelData ;
