SELECT Doctor, Professor, Singer, Actor
FROM 
    (SELECT 
        Name, 
        Occupation, 
        RANK() OVER(PARTITION BY Occupation ORDER BY Name) AS Rank
     FROM OCCUPATIONS
    )
PIVOT
(
    MAX(Name)
    FOR Occupation IN ('Doctor' AS Doctor, 'Professor' AS Professor, 'Singer' AS Singer, 'Actor' AS Actor)
)
ORDER BY Doctor, Professor, Singer, Actor;