-- Auto-generated from schema-map-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  authors
CREATE INDEX IF NOT EXISTS idx_authors_avg_rating ON authors (avg_rating);

CREATE INDEX IF NOT EXISTS idx_authors_books_count ON authors (books_count);
