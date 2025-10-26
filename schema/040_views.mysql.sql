-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  authors
-- Contract view for [authors]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_authors AS
SELECT
  id,
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
  deleted_at
FROM authors;
