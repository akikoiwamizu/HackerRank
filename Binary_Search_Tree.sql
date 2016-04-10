SELECT N, 
    CASE WHEN N > P AND N IN(SELECT P FROM BST) THEN 'Inner' 
         WHEN N < P AND N IN(SELECT P FROM BST) THEN 'Inner'
         WHEN P IS NULL THEN 'Root' 
         ELSE 'Leaf' END
FROM BST
ORDER BY N;