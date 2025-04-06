-- In this task, you should use the subquery you’ve created and retrieve the following three metric
-- metric 1
-- Free-to-Paid Conversion Rate:
-- This metric measures the proportion of engaged students who choose to benefit from full course
-- access on the 365 platform by purchasing a subscription after watching a lecture. It is calculated as
-- the ratio between:
-- The number of students who watched a lecture and purchased a subscription on the same day or later.
-- The total number of students who have watched a lecture.
-- Convert the result to percentages and call the field conversion_rate.

SELECT 
    ROUND((COUNT(DISTINCT CASE 
        WHEN first_date_watched <= first_date_purchased THEN student_id
        ELSE NULL
    END) / COUNT(DISTINCT student_id)) * 100, 2) AS conversion_rate
FROM 
    student_engagement_purchase_summary; -- conversion rate: 11.2861