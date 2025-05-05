
# Project Analysis and Insights on 365DataScience Platform 

An sql query for materialized views was created for a student engagement summary table for extracting key metrics and insight as shown below 
#### Sql Query 
```sql
CREATE MATERIALIZED VIEW student_engagement_summary AS
SELECT 
    -- Counting total number of students
    COUNT(DISTINCT student_id) AS total_students,

    -- Free-to-paid conversion rate
    ROUND(
        (COUNT(DISTINCT CASE 
            WHEN first_date_watched <= first_date_purchased THEN student_id 
            ELSE NULL 
        END) / COUNT(DISTINCT student_id)) * 100, 2
    ) AS conversion_rate,

    -- Average days from registration to first engagement
    ROUND(AVG(DATEDIFF(first_date_watched, date_registered)), 2) AS avg_days_to_engage,

    -- Average days from first engagement to first purchase
    ROUND(AVG(DATEDIFF(first_date_purchased, first_date_watched)), 2) AS avg_days_to_purchase

FROM 
    student_engagement_purchase_summary
WHERE 
    first_date_watched IS NOT NULL;
```
#### result output 
```csv
student_id,date_registered,first_date_watched,first_date_purchased,days_diff_reg_watch,days_diff_watch_purch
255193,2021-12-01,2021-12-01,NULL,0,NULL
255194,2021-12-01,2021-12-01,NULL,0,NULL
255198,2021-12-01,2022-02-17,NULL,78,NULL
255199,2021-12-01,2021-12-01,NULL,0,NULL
255200,2021-12-01,2021-12-01,NULL,0,NULL
255202,2021-12-01,2021-12-01,NULL,0,NULL
255203,2021-12-01,2021-12-01,2021-12-01,0,0
255204,2021-12-01,2021-12-01,2021-12-01,0,0
255205,2021-12-01,2021-12-01,NULL,0,NULL
255206,2021-12-01,2021-12-01,2021-12-02,0,1
255207,2021-12-01,2021-12-01,2021-12-01,0,0
255209,2021-12-01,2021-12-01,NULL,0,NULL
255211,2021-12-01,2021-12-02,NULL,1,NULL
255215,2021-12-01,2021-12-30,NULL,29,NULL
255218,2021-12-01,2021-12-01,2021-12-01,0,0
```

The following are the common metri s that are analyzed and obtained some insight from the summary data

## 1. Free-to-Paid Conversion Rate

### Analysis
The free-to-paid conversion rate measures the proportion of students who watched a lecture and subsequently purchased a subscription.
**Conversion Rate**: **11%**
#### SQL Query
```sql
SELECT 
    ROUND((COUNT(DISTINCT CASE 
        WHEN first_date_watched <= first_date_purchased THEN student_id
        ELSE NULL
    END) / COUNT(DISTINCT student_id)) * 100, 2) AS conversion_rate
FROM  student_engagement_purchase_summary;
```

#### Result Output
```csv
conversion_rate
11.29
```

### Insights
- The platform successfully converts 11% of engaged students into paying customers.
- A relatively low conversion rate might suggest room for improvement in converting interest into action.
- Marketing strategies or content engagement tactics could be enhanced to increase this rate.

---

## 2. Average Duration Between Registration and First-Time Engagement

### Analysis
On average, it takes a student **3.42 days** to watch their first lecture after registering on the platform.

#### SQL Query
```sql
SELECT 
    ROUND(AVG(DATEDIFF(first_date_watched, date_registered)), 2) AS av_reg_watch 
FROM 
    student_engagement_purchase_summary;
```
#### Result Output
```csv
av_reg_watch
3.42
```

### Insights
- A delay of more than 3 days before engagement may indicate onboarding friction.
- Improvements such as welcome emails, user guides, or gamified content previews might help reduce this time.

---

## 3. Average Duration Between First-Time Engagement and First-Time Purchase

### SQL Query
SELECT 
    ROUND(AVG(DATEDIFF(first_date_purchased, first_date_watched)), 2) AS av_watch_purch
FROM 
    student_engagement_purchase_summary
WHERE
    first_date_purchased IS NOT NULL;
```

### Result Output
```csv
av_watch_purch
26.25
```

### Analysis
After engaging with the first lecture, it takes an average of **26.25 days** for a student to purchase a subscription.

### Insights
- This time frame suggests a long decision-making process.
- Understanding this delay could lead to tailored nudges (e.g., time-sensitive discounts or reminders) during this window to improve conversion.

---

## Summary

- **Free-to-paid conversion rate**: 11%
- **Avg. time from registration to first engagement**: 3.42 days
- **Avg. time from engagement to purchase**: 26.25 days

This analysis provides actionable insights for improving platform engagement, streamlining onboarding, and boosting conversions.

---

*Note: Each SQL query is saved in the `/sql_queries/` folder and each result in the `/analysis/` folder to maintain repository structure.*
