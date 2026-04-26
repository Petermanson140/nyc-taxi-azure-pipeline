-- Query 1: Total number of trips per hour of the current day
SELECT 
    pickup_hour,
    COUNT(*) AS total_trips,
    ROUND(AVG(fare_amount), 2) AS avg_fare,
    ROUND(AVG(trip_distance), 2) AS avg_distance
FROM yellow_taxi_curated
GROUP BY pickup_hour
ORDER BY pickup_hour;