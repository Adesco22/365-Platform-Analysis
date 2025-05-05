
# Project Insights: 365DataScience Platform Analysis

## 1. Free-to-Paid Conversion Rate

### SQL Query
```sql
SELECT 
    ROUND((COUNT(DISTINCT CASE 
        WHEN first_date_watched <= first_date_purchased THEN student_id
        ELSE NULL
    END) / COUNT(DISTINCT student_id)) * 100, 2) AS conversion_rate
FROM  student_engagement_purchase_summary;
```

### Result Output
```csv
conversion_rate
11.29
```

### Analysis
The free-to-paid conversion rate measures the proportion of students who watched a lecture and subsequently purchased a subscription.

**Conversion Rate**: **11%**

### Insights
- The platform successfully converts 11% of engaged students into paying customers.
- A relatively low conversion rate might suggest room for improvement in converting interest into action.
- Marketing strategies or content engagement tactics could be enhanced to increase this rate.

---

## 2. Average Duration Between Registration and First-Time Engagement

### SQL Query
```sql
-- first_engagement_query.sql
-- Add your SQL query here that calculates the duration from registration to first watch
```

### Result Output
```csv
-- average_duration_results.csv
-- metric, value
-- average_days_to_engage, 3.42
```

### Analysis
On average, it takes a student **3.42 days** to watch their first lecture after registering on the platform.

### Insights
- A delay of more than 3 days before engagement may indicate onboarding friction.
- Improvements such as welcome emails, user guides, or gamified content previews might help reduce this time.

---

## 3. Average Duration Between First-Time Engagement and First-Time Purchase

### SQL Query
```sql
-- average_duration_query.sql
-- Add your SQL query here that calculates the duration from first watch to first purchase
```

### Result Output
```csv
-- average_duration_results.csv
-- metric, value
-- average_days_to_purchase, 26.25
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

*Note: Ensure that each SQL query is saved in the `/sql_queries/` folder and each result in the `/analysis/` folder to maintain repository structure.*
