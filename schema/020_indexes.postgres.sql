-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  authors
CREATE INDEX IF NOT EXISTS idx_authors_avg_rating ON authors (avg_rating);

CREATE INDEX IF NOT EXISTS idx_authors_books_count ON authors (books_count);
