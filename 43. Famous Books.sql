You are given 2 tables, One containing the available Books and the other containing the Books that have been bought by a customer. You have to find the Id’s of all the ‘Famous’ Books. A book is called ‘Famous’ if it is bought by at least 3 customers.

SELECT b.Id AS Id
FROM Books b 
JOIN BoughtBooks bb ON b.Id = bb.BooksId 
GROUP BY b.Id
HAVING COUNT(bb.BooksId) >= 3
;
