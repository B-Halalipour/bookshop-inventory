-- Drop the table if it already exists to avoid errors when re-running the file
DROP TABLE IF EXISTS books;

-- Create the books table

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    price NUMERIC(6,2) NOT NULL,
    quantity_in_stock INTEGER NOT NULL,
    release_date DATE,
    is_fiction BOOLEAN NOT NULL
);

