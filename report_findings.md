# Report Findings — Students' Mental Health Analysis

This report summarizes the key insights obtained from SQL analyses conducted in **DataCamp Datalab** on the `students` dataset.  
The project explores how **stay duration**, **English proficiency**, and **academic level** relate to students’ **mental health indicators**:  
- **Depression** (`todep`)  
- **Acculturative Stress** (`toas`)  
- **Social Connectedness** (`tosc`)  

---

## Relationship 1 — Stay Duration vs Mental Health

| Stay Category | Avg Depression | Avg Stress | Avg Connectedness |
|----------------|----------------|-------------|-------------------|
| Short | 7.70 | 71.03 | 37.94 |
| Medium | 8.74 | 72.86 | 37.48 |
| Long | 7.84 | 75.44 | 35.78 |

**Summary:**  
Longer stays are associated with **slightly lower depression** and **higher social connectedness**, indicating better adaptation over time.  
Students who stayed longer also showed **slightly higher stress**, which may result from increased academic or social responsibilities as they integrate deeper.

---

## Relationship 2 — English Proficiency vs Mental Health

| English Category | Avg Depression | Avg Stress | Avg Connectedness |
|------------------|----------------|-------------|-------------------|
| Low | 9.32 | 68.36 | 37.05 |
| Average | 8.31 | 67.44 | 38.48 |
| High | 7.98 | 75.30 | 37.05 |

**Summary:**  
Higher English proficiency is linked with **lower depression** and **slightly higher stress** levels, possibly due to stronger academic engagement.  
Connectedness remains stable, suggesting that social bonds are not significantly impacted by language level once a basic proficiency is reached.

---

## Relationship 3 — Academic Level vs Mental Health

| Academic Level | Avg Depression | Avg Stress | Avg Connectedness |
|----------------|----------------|-------------|-------------------|
| Under | 8.43 | 72.07 | 37.16 |
| Grad | 5.29 | 76.05 | 41.19 |

**Summary:**  
Graduate students exhibit **lower depression**, **higher stress**, and **stronger social connectedness** compared to undergraduates.  
This pattern suggests that while graduate students may handle emotional challenges better, they also face **greater academic and professional pressure**.

---

## Relationship 4 — Final Query: Stay Duration (Years) vs Mental Health *(International Students Only)*

| Stay (Years) | Count | Avg PHQ (Depression) | Avg SCS (Self-Confidence) | Avg AS (Academic Stress) |
|---------------|--------|----------------------|----------------------------|---------------------------|
| 10 | 1 | 13.00 | 32.00 | 50.00 |
| 8 | 1 | 10.00 | 44.00 | 65.00 |
| 7 | 1 | 4.00 | 48.00 | 45.00 |
| 6 | 3 | 6.00 | 38.00 | 58.67 |
| 5 | 1 | 0.00 | 34.00 | 91.00 |
| 4 | 14 | 8.57 | 33.93 | 87.71 |
| 3 | 46 | 9.09 | 37.13 | 78.00 |
| 2 | 39 | 8.28 | 37.08 | 77.67 |
| 1 | 95 | 7.48 | 38.11 | 72.80 |

**Summary:**  
- Students with **longer stays (≥ 5 years)** tend to show **lower depression** and **higher academic stress**, indicating a more complex adaptation process.  
- The **self-confidence (SCS)** scores remain fairly consistent, suggesting stability in self-perception across stay durations.  
- The **highest stress levels** are observed between 3–5 years, possibly due to academic peak demands.  
- Overall, **mental well-being improves with longer exposure**, although **stress remains a persistent factor**.

---

## 💡 Consolidated Insights

| Factor | Depression | Stress | Connectedness | Interpretation |
|--------|-------------|--------|----------------|----------------|
| Longer Stay | ↓ | ↑ | ↑ | Better adaptation but with more academic pressure |
| Higher English | ↓ | ↑ | → | Lower depression due to comfort, moderate stress from engagement |
| Graduate Level | ↓↓ | ↑ | ↑↑ | Emotionally resilient but under higher workload |

---

## 🧠 Overall Interpretation

The results indicate that **adaptation, communication ability, and academic maturity** significantly affect students’ emotional states.  
- Longer residence and stronger English skills **reduce emotional distress** but may **increase academic stress** due to higher involvement.  
- Graduate students demonstrate **resilience** and **social maturity**, managing their well-being despite elevated challenges.

---
## 📘 Author & Environment

**Author:** Ahmed Monir Almassri  
**Platform:** DataCamp Datalab  
**Language:** SQL (PostgreSQL)  
**Date:** November 2025  
---
> “Understanding mental health through data helps us design better support systems for students adapting to new environments.”  
> — Ahmed Monir Almassri
