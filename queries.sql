/* ==========================================================
   📘 STUDENTS' MENTAL HEALTH ANALYSIS (SQL PROJECT)
   Author: Ahmed Monir Almassri
   Description:
       SQL analysis exploring relationships between
       stay duration, English proficiency, and academic level
       vs. mental health indicators (depression, stress, connectedness).
   ========================================================== */

/* ==========================================================
   1️⃣ Preview Dataset
   ========================================================== */
SELECT *
FROM students
LIMIT 10;


/* ==========================================================
   2️⃣ Distribution Analyses
   ========================================================== */

/* -- 2.1 Stay Duration Distribution ----------------------- */
SELECT 
    CASE 
        WHEN stay_cate IS NULL OR TRIM(stay_cate) = '' THEN 'Unknown'
        ELSE stay_cate
    END AS stay_category,
    COUNT(*) AS total_students
FROM students
GROUP BY 
    CASE 
        WHEN stay_cate IS NULL OR TRIM(stay_cate) = '' THEN 'Unknown'
        ELSE stay_cate
    END
ORDER BY stay_category;


/* -- 2.2 English Proficiency Distribution ----------------- */
SELECT 
    CASE 
        WHEN english_cate IS NULL OR TRIM(english_cate) = '' THEN 'Unknown'
        ELSE english_cate
    END AS english_category,
    COUNT(*) AS total_students
FROM students
GROUP BY 
    CASE 
        WHEN english_cate IS NULL OR TRIM(english_cate) = '' THEN 'Unknown'
        ELSE english_cate
    END
ORDER BY english_category;


/* -- 2.3 Academic Level Distribution ---------------------- */
SELECT 
    CASE 
        WHEN academic IS NULL OR TRIM(academic) = '' THEN 'Unknown'
        ELSE academic
    END AS academic_level,
    COUNT(*) AS total_students
FROM students
GROUP BY 
    CASE 
        WHEN academic IS NULL OR TRIM(academic) = '' THEN 'Unknown'
        ELSE academic
    END
ORDER BY academic_level;


/* ==========================================================
   3️⃣ Relationship Analyses
   ========================================================== */

/* -- 3.1 Stay Duration vs Mental Health ------------------- */
SELECT  
    stay_category,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress,
    ROUND(AVG(tosc), 2) AS avg_connectedness
FROM (
    SELECT  
        CASE 
            WHEN stay_cate IS NULL OR TRIM(stay_cate) = '' THEN 'Unknown'
            ELSE stay_cate
        END AS stay_category,
        todep,
        toas,
        tosc
    FROM students
) AS cleaned
GROUP BY stay_category
ORDER BY 
    CASE stay_category
        WHEN 'Short' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Long' THEN 3
        WHEN 'Unknown' THEN 4
        ELSE 5
    END;


/* -- 3.2 English Proficiency vs Mental Health ------------- */
SELECT
    english_category,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress,
    ROUND(AVG(tosc), 2) AS avg_connectedness
FROM (
    SELECT 
        CASE 
            WHEN english_cate IS NULL OR TRIM(english_cate) = '' THEN 'Unknown'
            ELSE english_cate
        END AS english_category,
        todep,
        toas,
        tosc
    FROM students
) AS cleaned
GROUP BY english_category
ORDER BY 
    CASE english_category
        WHEN 'Low' THEN 1
        WHEN 'Average' THEN 2
        WHEN 'High' THEN 3
        WHEN 'Unknown' THEN 4
        ELSE 5
    END;


/* -- 3.3 Academic Level vs Mental Health ------------------ */
SELECT  
    academic_level,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress,
    ROUND(AVG(tosc), 2) AS avg_connectedness
FROM (
    SELECT  
        CASE 
            WHEN academic IS NULL OR TRIM(academic) = '' THEN 'Unknown'
            ELSE academic
        END AS academic_level,
        todep,
        toas,
        tosc
    FROM students
) AS cleaned
GROUP BY academic_level
ORDER BY 
    CASE academic_level
        WHEN 'Under' THEN 1
        WHEN 'Grad' THEN 2
        WHEN 'Unknown' THEN 3
        ELSE 4
    END;