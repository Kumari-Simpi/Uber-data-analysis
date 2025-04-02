SELECT * FROM uber;

-- Busiest booking day.
SELECT `day`, COUNT(*) AS ride_count 
FROM uber 
GROUP BY `day` 
ORDER BY ride_count DESC;

--  Average miles per ride.
SELECT AVG(MILES) AS avg_miles FROM uber;

-- Total Miles Traveled Per Month.
SELECT month, SUM(MILES) AS total_miles
FROM uber
GROUP BY month
ORDER BY total_miles DESC;

-- Average Miles per Ride by Category.
SELECT CATEGORY, AVG(MILES) AS avg_miles
FROM uber
GROUP BY CATEGORY
ORDER BY avg_miles DESC;

-- Peak Booking Hours (Day vs Night).
SELECT `day-night`, COUNT(*) AS ride_count
FROM uber
GROUP BY `day-night`
ORDER BY ride_count DESC;

-- Top 5 Purposes for Booking Uber Rides.
SELECT PURPOSE, COUNT(*) AS purpose_count
FROM uber
GROUP BY PURPOSE
ORDER BY purpose_count DESC
LIMIT 5;

-- Total Rides and Miles by Day of the Week for Each Month.
SELECT day, month, COUNT(*) AS ride_count, SUM(MILES) AS total_miles
FROM uber
GROUP BY day, month
ORDER BY month, ride_count DESC;