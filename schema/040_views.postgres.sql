-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  authors

-- Contract view for [authors]
CREATE OR REPLACE VIEW vw_authors AS
SELECT
  id,
  tenant_id,
  name,
  slug,
  bio,
  photo_url,
  story,
  books_count,
  ratings_count,
  rating_sum,
  avg_rating,
  last_rating_at,
  created_at,
  updated_at,
  version,
  deleted_at
FROM authors;
