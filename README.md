
## SQL Project: Data Analysis of students' learning behavior on 365datascience Platform 

### Project Overview
This project analyzes student behavior on the 365DataScience learning platform using **MySQL**, with a primary focus on calculating the **free-to-paid conversion rate**—the proportion of students who purchase a subscription after watching a lecture.

### Objectives
The analysis was driven by three key goals:

1. **Free-to-Paid Conversion Rate**  
   Identify the proportion of students who watched a lecture and purchased a subscription on the same day or later.

2. **Average Time from Registration to First Engagement**  
   Determine how long, on average, it takes a student to engage with the platform after registering.

3. **Average Time from First Engagement to Purchase**  
   Measure the average time taken for students to convert to paid users after watching their first lecture.

### Key Questions Answered
- What is the platform’s free-to-paid conversion rate?
- How quickly do students engage with content after registration?
- How long does it take for engaged students to make their first purchase?
- What insights can be drawn to optimize user engagement and monetization?

---

### Database Schema
The database `db_course_conversions` includes the following tables:

#### Students Table
| Column          | Type | Description                             |
|-----------------|------|-----------------------------------------|
| student_id      | int  | Unique identifier for each student      |
| date_registered | date | Registration date                       |

#### Engagements Table
| Column             | Type | Description                                 |
|--------------------|------|---------------------------------------------|
| student_id         | int  | Foreign key referencing the student         |
| first_date_watched | date | Date of the student’s first lecture watched |

#### Purchases Table
| Column               | Type | Description                                |
|----------------------|------|--------------------------------------------|
| student_id           | int  | Foreign key referencing the student        |
| first_date_purchased | date | Date of the first subscription purchase    |

**Note**: These tables were merged into a unified view: `student_engagement_purchase_summary`.

---

### Methodology
- **Data Extraction**: Joined and aggregated data across tables to form a comprehensive view of student journeys.
- **SQL Analysis**: Wrote and optimized MySQL queries to compute conversion rates and time intervals.
- **Result Storage**: Exported analysis results into CSV files for documentation and possible future visualization.

---

### Tools & Technologies
- **MySQL** – for writing and executing all queries
- **Git & GitHub** – for version control and collaboration
- **CSV** – for storing query results
- *(Optional)* **Tableau** – for visualization, if extended beyond SQL

---

### Project Structure
365-Platform-Analysis/ ├── sql_queries/ │   ├── conversion_rate_query.sql │   ├── average_duration_query.sql │   └── first_engagement_query.sql ├── analysis/ │   ├── conversion_rate_results.csv │   └── average_duration_results.csv ├── insights/ │   └── project_insights.md └── README.md

## Conclusion 
This project highlights my proficiency in SQL-based data analysis. By measuring critical user behavior metrics, such as engagement and conversion, it provides insights that can inform data-driven product and marketing decisions for online learning platforms.
