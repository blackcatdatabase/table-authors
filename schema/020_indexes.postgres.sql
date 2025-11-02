-- Auto-generated from schema-map-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  authors
CREATE INDEX IF NOT EXISTS idx_authors_avg_rating ON authors (avg_rating);

CREATE INDEX IF NOT EXISTS idx_authors_books_count ON authors (books_count);
