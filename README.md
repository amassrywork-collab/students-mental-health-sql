# 🧠 Analyzing Students’ Mental Health (SQL, DataCamp Datalab)

Exploratory SQL analysis of a students’ mental health dataset to explore how **stay duration**, **English proficiency**, and **academic level** relate to **depression (PHQ-9)**, **acculturative stress (ASISS)**, and **social connectedness (SCS)**.

![Stay vs Mental](charts/stay_vs_mental.png)

---

## 📂 Project Structure

- `notebook.ipynb` — full DataCamp Datalab notebook  
- `report.pdf` — exported report view  
- `queries.sql` — all SQL code (data cleaning + relationships)  
- `charts/` — exported bar charts  
- `report_findings.md` — written summaries and interpretation  

---

## 🎯 Research Questions

1️⃣ Does **longer stay duration** improve mental health indicators?  
2️⃣ Does **higher English proficiency** correlate with lower depression and stress?  
3️⃣ How do **undergraduate vs graduate** students differ in well-being?

---

## 🧪 Methodology

- SQL environment: **DataCamp Datalab (PostgreSQL)**  
- Data cleaning using `CASE`, `TRIM`, and `COALESCE`  
- Aggregation with `AVG()` to compute mean depression, stress, and connectedness  
- Custom ordering using `ORDER BY CASE` for readable chart outputs  
- Data visualized with Datalab’s **Chart Builder** (bar & grouped charts)

---

## 🔍 Key Findings (Short Summary)

| Relationship | Main Insights |
|---------------|---------------|
| **Stay Duration** | Longer stays showed **slightly lower depression** and **higher social connectedness**, indicating better adaptation over time, though stress increased marginally. |
| **English Proficiency** | Higher English proficiency correlated with **lower depression** and **moderately higher stress**, while connectedness remained stable. |
| **Academic Level** | Graduate students experienced **lower depression (5.29)** but **higher stress (76.05)** and **stronger connectedness (41.19)** than undergraduates (8.43 / 72.07 / 37.16). |

👉 Full written interpretation is available in [`report_findings.md`](report_findings.md).

---

## 💡 Insights & Implications

- **Adaptation over time** appears to improve emotional stability.  
- **Language proficiency** reduces emotional strain but raises academic stress.  
- **Graduate students** balance lower depression with higher workload-related pressure.  
- Cultural and academic integration factors seem to jointly influence mental well-being.

---

## 🚀 How to Reproduce

You can reproduce this analysis in **DataCamp Datalab**:
1. Import the same `students` dataset.  
2. Run the queries from [`queries.sql`](queries.sql).  
3. Create grouped bar charts for each relationship.  
4. Export the final report as PDF or Markdown.

---

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
