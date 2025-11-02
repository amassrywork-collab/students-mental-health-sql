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

## 💡 Final Insights

- **Longer stays** → Better overall mental well-being due to adaptation.  
- **Higher English proficiency** → Lower depression, moderate stress due to higher engagement.  
- **Graduate students** → Lower depression, higher stress, stronger connectedness.  
- Mental health seems influenced by **adaptation**, **language comfort**, and **academic workload**.

---

## 🧠 Interpretation

The results collectively suggest that **acculturation (adjusting to a new environment)** and **academic context** play significant roles in students’ emotional well-being.  
While prolonged exposure and higher language ability reduce depression, they may also introduce **new stress factors** related to academic performance and expectations.

---

**Author:** Ahmed Monir Almassri  
**Platform:** DataCamp Datalab  
**Tools:** PostgreSQL, SQL Analytics  
**Date:** November 2025