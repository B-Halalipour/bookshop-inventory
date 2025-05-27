-- books in stock
SELECT * FROM books WHERE quantity_in_stock > 0;

-- The non-fiction books
SELECT * FROM books WHERE is_fiction = FALSE;

-- The books released in the 1900s

SELECT * FROM books WHERE release_date >= '1900-01-01' AND release_date <= '1999-12-31';

--The books with "the" in the title.

SELECT * FROM books WHERE LOWER(title) LIKE '%the%';

-- All of the books sorted in alphabetical order

SELECT * FROM books ORDER BY title ASC;

-- All of the books sorted from most to least expensive

SELECT * FROM books ORDER BY price DESC;

-- The most expensive book

SELECT * FROM books ORDER BY price DESC LIMIT 1;

-- The books that are in stock and are under £7

SELECT * FROM books WHERE quantity_in_stock > 0 AND price < 7;

-- The books that are under £6 or are non fiction

SELECT * FROM books WHERE price < 6 AND is_fiction = FALSE; 