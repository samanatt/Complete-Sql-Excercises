----------------سناریو 1

SELECT *
FROM T1
UNION ALL
SELECT *
FROM T2
-------------------
SELECT *
FROM T2
UNION ALL
SELECT *
FROM T1

---سناریو 2

SELECT *
FROM T1
UNION 
SELECT *
FROM T2
-------------------
SELECT *
FROM T2
UNION 
SELECT *
FROM T1

----سناریو 3
SELECT *
FROM T1
INTERSECT
SELECT *
FROM T2
-------------------
SELECT *
FROM T2
INTERSECT
SELECT *
FROM T1


----------------------
--سناریو 4

SELECT *
FROM T1
EXCEPT
SELECT *
FROM T2
------سناریو 5
SELECT *
FROM T2
EXCEPT
SELECT *
FROM T1

-------------------------------------------