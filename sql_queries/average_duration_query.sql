-- metric 2: Average Duration Between Registration and First-Time Engagement:
-- This metric measures the average duration between the date of registration and the date of first-time engagement. 
-- This will tell us how long it takes, on average, for a student to watch a lecture after registration. 
-- The metric is calculated by finding the ratio between:

-- The sum of all such durations.
-- The count of these durations, or alternatively, the number of students who have watched a lecture.
-- Call the field av_reg_watch
SELECT 
    ROUND(AVG(DATEDIFF(first_date_watched, date_registered)), 2) AS av_reg_watch 
FROM 
    student_engagement_purchase_summary;  -- average duration - '3.4239'