BEGIN;

CREATE TABLE IF NOT EXISTS review(
   review_id INT PRIMARY KEY,
   review_text TEXT,
   rating TEXT,
   customer_id INT,
   film_id INT
);


COMMIT;