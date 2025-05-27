DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(255) UNIQUE NOT NULL,
    fun_fact TEXT
);

ALTER TABLE books 
ADD COLUMN IF NOT EXISTS author_id INTEGER REFERENCES authors(author_id);