-- Query 2: Total average fare price and tip percentage by the different payment types
-- Payment type: 1=Credit card, 2=Cash, 3=No charge, 4=Dispute
SELECT 
    payment_type,
    CASE payment_type
        WHEN 1 THEN 'Credit Card'
        WHEN 2 THEN 'Cash'
        WHEN 3 THEN 'No Charge'
        WHEN 4 THEN 'Dispute'
        ELSE 'Unknown'
    END AS payment_description,
    COUNT(*) AS total_trips,
    ROUND(AVG(fare_amount), 2) AS avg_fare,
    ROUND(AVG(tip_amount), 2) AS avg_tip,
    ROUND(AVG(tip_percentage), 2) AS avg_tip_percentage
FROM yellow_taxi_curated
GROUP BY payment_type
ORDER BY total_trips DESC;