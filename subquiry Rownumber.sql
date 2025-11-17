/*
SELECT * FROM producta

SELECT p_name,price,
	ROW_NUMBER() OVER(ORDER BY price DESC)AS ronum
FROM producta;

SELECT p_name,sup_id,price,Total_amount,
	ROW_NUMBER() OVER(PARTITION BY sup_id ORDER BY price DESC) AS rnum
FROM producta;

SELECT * FROM(
	SELECT p_name,sup_id,price,Total_amount,
		ROW_NUMBER() OVER(ORDER BY price DESC) AS rn
FROM producta) AS t
WHERE rn<=3
*/