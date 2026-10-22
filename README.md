# Netflix Data Analysis Using SQL

A MySQL-based data analytics project exploring Netflix movies and TV shows through SQL queries, data quality checks, and analytical techniques.

## Project Overview

This project analyzes a Netflix content dataset to explore content distribution, ratings, genres, countries, directors, actors, release-year trends, and movie durations.

The goal is to answer business questions using SQL and demonstrate practical skills in data exploration, aggregation, data cleaning, and advanced querying.

## Tools & Technologies

- **Database:** MySQL
- **SQL Environment:** MySQL Workbench
- **Dataset:** Netflix titles CSV
- **Version Control:** Git and GitHub

## Dataset

The dataset contains information about Netflix titles, including:

| Column | Description |
|---|---|
| `show_id` | Unique title identifier |
| `type` | Movie or TV Show |
| `title` | Title name |
| `director` | Director information |
| `cast` | Cast information |
| `country` | Country of production |
| `date_added` | Date added to Netflix |
| `release_year` | Original release year |
| `rating` | Content rating |
| `duration` | Movie duration or TV show seasons |
| `listed_in` | Genre or category |
| `description` | Title description |

## Business Questions

The project explores 20 analytical questions, including:

1. How many movies and TV shows are in the dataset?
2. Which content ratings are most common?
3. Which movies were released in a particular year?
4. Which countries have the most Netflix titles?
5. What is the longest movie?
6. Which titles were added within a specified period?
7. Which movies and TV shows were directed by a particular director?
8. Which TV shows have more than two seasons?
9. How can titles be categorized using description keywords?
10. Which directors have worked on both movies and TV shows?
11. How many documentaries are available?
12. How many titles were released each year after 2015?
13. Which genres have the most titles?
14. What is the cumulative number of titles across release years?
15. Which actors appear in the most titles?
16. How can movies be ranked by duration within each release year?
17. What percentage of titles are movies versus TV shows?
18. Which titles represent single-country and multi-country productions?
19. What is the average movie duration for each rating category?
20. How can movies be grouped into duration categories?

## SQL Concepts Demonstrated

- Filtering with `WHERE` and `HAVING`
- Aggregations using `COUNT()`, `SUM()`, and `AVG()`
- Grouping and sorting with `GROUP BY` and `ORDER BY`
- String manipulation and pattern matching
- Conditional logic with `CASE`
- Subqueries and Common Table Expressions (CTEs)
- Ranking with `RANK()` and `DENSE_RANK()`
- Window functions and running totals
- NULL handling and data quality checks
- Percentage calculations and data categorization

## Project Structure

```text
Netflix-Data-Analysis-Insights-Analytics/
├── Data/
│   ├── NetflixUTF.csv
│   └── Questions.txt
├── screenshots/
│   ├── categorize_movie_duration.png
│   ├── movie_director_analysis.png
│   ├── movie_ranking_by_release_year.png
│   ├── record_count.png
│   └── running_total_analysis.png
├── Netflix Data Analysis & Insights Analytics - SQL Project.sql
├── netflix_analysis.sql
└── README.md
```

## Setup and Execution

### 1. Clone the repository

```bash
git clone https://github.com/Priyanshu-Yadav19/netflix-data-analysis-sql.git
cd netflix-data-analysis-sql
```

### 2. Create the database

Open MySQL Workbench and execute:

```sql
CREATE DATABASE IF NOT EXISTS netflix_db;
USE netflix_db;
```

### 3. Import the dataset

Import `Data/NetflixUTF.csv` into MySQL Workbench and create a table named `netflixutf`.

Ensure the imported columns and data types match the dataset. The CSV file uses semicolons (`;`) as delimiters.

### 4. Run the SQL scripts

Open the SQL scripts in MySQL Workbench and execute the queries after confirming that the `netflixutf` table has been imported successfully.

## Screenshots

The `screenshots/` folder contains examples of query results and analysis, including:

- Data exploration and record counts
- Movie duration categorization
- Director analysis
- Movie ranking by release year
- Running-total analysis

## Project Highlights

- Explores Netflix movies and TV shows using SQL.
- Examines ratings, genres, countries, and release-year trends.
- Includes data quality checks and missing-value analysis.
- Demonstrates advanced SQL techniques, including CTEs and window functions.
- Uses query results to investigate meaningful questions about the content catalog.

## Author

**Priyanshu Yadav**

SQL | MySQL | Data Analysis

Repository: [netflix-data-analysis-sql](https://github.com/Priyanshu-Yadav19/netflix-data-analysis-sql)

## Acknowledgment

The original SQL project and analysis materials were sourced from an existing project. Any reused material remains subject to its applicable license and attribution requirements.

