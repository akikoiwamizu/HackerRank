SELECT IF(G.GRADE < 8, CONCAT('NULL'), S.NAME), G.GRADE, S.MARKS
FROM STUDENTS S, GRADES G
WHERE S.MARKS <= G.MAX_MARK AND S.MARKS >= G.MIN_MARK
ORDER BY G.GRADE DESC, S.NAME ASC, S.MARKS ASC;
