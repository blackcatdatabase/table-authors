-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  authors
CREATE INDEX idx_authors_avg_rating ON authors (avg_rating);

CREATE INDEX idx_authors_books_count ON authors (books_count);
