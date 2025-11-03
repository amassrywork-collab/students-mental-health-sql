# 🧠 Analyzing Students’ Mental Health (SQL Project)

### 🎓 Project Overview
This project investigates how the **length of stay** affects the **mental health diagnostic scores** of **international students**.  
All analysis was conducted **entirely using SQL** within **DataCamp Datalab**.

---

## 🎯 Objective
To determine whether the duration of stay abroad influences students’ levels of:
- **Depression (PHQ-9 test)**  
- **Self-confidence (SCS test)**  
- **Academic stress (ASISS test)**  

---

## 🧩 Dataset Description
The dataset `students` includes the following key columns:

| Column | Description |
|---------|-------------|
| `inter_dom` | Student type (International or Domestic) |
| `stay` | Length of stay (in years) |
| `todep` | PHQ-9 depression test score |
| `tosc` | SCS self-confidence score |
| `toas` | ASISS academic stress score |

---

## 🧮 SQL Approach

1. **Filter** to include only international students.  
2. **Group** the data by `stay` (length of stay).  
3. **Calculate averages** of each diagnostic test using `AVG()` and round to 2 decimals.  
4. **Count** the number of students per group.  
5. **Sort** results by stay in descending order.

---

## 💻 Final SQL Query

```sql
-- FINAL: Stay (length) impact on mental health for INTERNATIONAL students
SELECT
  stay AS stay,
  COUNT(*) AS count_int,
  ROUND(AVG(todep), 2) AS average_phq,   -- PHQ-9
  ROUND(AVG(tosc), 2) AS average_scs,    -- SCS
  ROUND(AVG(toas), 2) AS average_as      -- ASISS
FROM students
WHERE inter_dom = 'Inter'
  AND stay IS NOT NULL
  AND TRIM(stay::text) <> ''
GROUP BY stay
ORDER BY stay DESC;

## 👤 Author

**Ahmed Monir Almassri**  
🎓 Computer Engineering Student | Aspiring Data Engineer  
📍 Gaza (Islamic University of Gaza)  
💡 Passionate about SQL, Data Engineering & Machine Learning  

---

### 🏷️ Tags
`#SQL` `#DataCamp` `#DataAnalysis` `#DataEngineering` `#PortfolioProject`

---
### ⭐ If you liked this project:
Give it a **star** 🌟 on [GitHub]([https://github.com/](https://github.com/amassrywork-collab)) and connect with me on [LinkedIn](www.linkedin.com/in/ahmed-m-a-almassri-15415b334) for more data projects!
