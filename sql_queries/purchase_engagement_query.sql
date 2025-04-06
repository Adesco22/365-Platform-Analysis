-- metric 3: Average Duration Between First-Time Engagement and First-Time Purchase:
-- This metric measures the average time it takes individuals to subscribe to the platform after viewing a lecture. It is calculated by dividing:

-- The sum of all such durations.
-- The count of these durations, or alternatively, the number of students who have made a purchase.
-- Call the field av_watch_purch.
SELECT 
    ROUND(AVG(DATEDIFF(first_date_purchased, first_date_watched)), 2) AS av_watch_purch
FROM 
    student_engagement_purchase_summary
WHERE
    first_date_purchased IS NOT NULL; -- average watched purchase: '26.2472'


