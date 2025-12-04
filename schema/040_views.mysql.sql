-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  authors

-- Contract view for [authors]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_authors AS
SELECT
  tenant_id,
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
  version,
  deleted_at
FROM authors;
