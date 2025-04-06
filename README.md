# 365DataScience-Platform-Analysis
SQL data analysis of student engagement and purchases on the 365datascience platform

## SQL Project: Calculating Free-to-Paid Conversion Rate

## Project Overview

In this project, we aim to calculate key metrics related to student behavior on the 365 platform using SQL. The primary focus is on calculating the **free-to-paid conversion rate**, which measures the proportion of students who purchase a subscription after watching a lecture.


The key objectives of this project are to:
1. **Calculate the Free-to-Paid Conversion Rate**: The proportion of students who watched a lecture and purchased a subscription either on the same day or later.
2. **Determine the Average Duration Between Registration and First-Time Engagement**: This measures how long it takes, on average, for a student to engage with the platform after registering.
3. **Calculate the Average Duration Between First-Time Engagement and First-Time Purchase**: This measures how long it takes, on average, for a student to purchase a subscription after engaging with a lecture.


By the end of this project, you'll be able to answer the following questions:
1. What is the free-to-paid conversion rate of students who have watched a lecture on the 365 platform?
2. What is the average duration between the registration date and when a student has watched a lecture for the first time?
3. What is the average duration between the date of first-time engagement and when a student purchases a subscription for the first time?
4. What are the implications of these results?

## Database Description
The project uses a database called `db_course_conversions`, which contains three tables that store relevant data:

1. **Students Table**: Contains information about students’ registration dates.
   - `student_id` (int): Unique identifier for each student.
   - `date_registered` (date): Date when the student registered on the 365 platform.
   
2. **Engagements Table**: Tracks students’ engagement with video content.
   - `student_id` (int): Unique identifier for each student (foreign key).
   - `first_date_watched` (date): Date of the first video watched by the student.
   
3. **Purchases Table**: Contains data about subscription purchases made by students.
   - `student_id` (int): Unique identifier for each student (foreign key).
   - `first_date_purchased` (date): Date when the student made their first purchase.

NOTE: these tableS were merged to create a TABLE view called [student engagement purchase summary](analysis/student_engagement_purchase_summary.csv)

## Project Scope

### Data Extraction:
The project will involve extracting data from the three tables, joining them correctly, and performing aggregations. The results will be used to calculate various metrics.

### SQL Queries:
You will write SQL queries to:
- Creation of **special table views** for further analysis
- Calculate the **free-to-paid conversion rate**.
- Calculate the **average duration between registration and first-time engagement**.
- Calculate the **average duration between first-time engagement and first-time purchase**.

### Data Analysis:
After calculating the metrics, the results will be stored in CSV files for further analysis. 

### Insights:
Finally, based on the calculated metrics, you'll summarize the findings in a **project insights markdown file**. This file will include a description of the methodology, key results, and any recommendations based on the analysis.

## Folder Structure
my_project/
├── sql_queries/
│   ├── conversion_rate_query.sql
│   ├── average_duration_query.sql
│   └── first_engagement_query.sql
├── analysis/
│   ├── conversion_rate_results.csv
│   └── average_duration_results.csv
├── insights/
│   └── project_insights.md

## Steps to Execute the Project

1. **Clone the Repository**: 
    - Use the following command to clone this repository and set it up on your local machine:
    ```bash
    git clone https://github.com/yourusername/yourrepository.git
    ```

2. **Run SQL Queries**: 
    - Open your SQL environment (e.g., MySQL, PostgreSQL, or another SQL client).
    - Execute the SQL queries found in the `sql_queries/` folder to calculate the required metrics and analysis.

3. **Analyze the Results**: 
    - Store the results of the queries in CSV files located in the `analysis/` folder.
    - Optionally, generate charts and visualizations in the `charts/` folder.

4. **Document Insights**: 
    - After analyzing the data, document your insights in the `insights/project_insights.md` file.

## Expected Outcome

- **Free-to-Paid Conversion Rate**: The approximate percentage of students who watched a lecture and subsequently purchased a subscription.
- **Average Duration Between Registration and Engagement**: The average time it takes for students to start engaging with content after registering.
- **Average Duration Between Engagement and Purchase**: The average time it takes for students to make a purchase after engaging with content.

## Tools and Technologies Used

- **MySQL**: For querying and analyzing the data.
- **CSV**: To store the results of the SQL queries.
- **Markdown**: For documenting project insights and results.
- **(Optional)**: Any visualization tool to generate charts (e.g., Power BI, Tableau, or Matplotlib).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### Explanation:
- **Case Description**: Summarizes the project and its objectives, including the SQL tasks you will perform.
- **Project Scope**: Lists the metrics to be calculated and what each one entails.
- **Folder Structure**: Shows the hierarchy of files and directories in your project and explains what each file contains.
- **Setup Instructions**: Includes basic instructions for setting up and running the project.
- **Conclusion**: Summarizes the outcome and the value of the analysis.

By adding this to your **README.md** file, anyone reading it will have a clear understanding of the project's purpose, the structure of the project, and how to execute it.



---