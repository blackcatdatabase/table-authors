-- Auto-generated from feature-modules-mysql.psd1 (map@mtime:2025-11-27T17:06:04Z)
-- engine: mysql
-- table:  book_assets_catalog_health_summary
-- High-level catalog health
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_book_assets_catalog_health_summary AS
SELECT
  (SELECT COUNT(*) FROM authors WHERE deleted_at IS NULL) AS authors_live,
  (SELECT COUNT(*) FROM categories WHERE deleted_at IS NULL) AS categories_live,
  (SELECT COUNT(*) FROM books WHERE deleted_at IS NULL) AS books_live,
  (SELECT COUNT(*) FROM books b
     WHERE b.deleted_at IS NULL
       AND NOT EXISTS (SELECT 1 FROM book_assets a WHERE a.book_id = b.id AND a.asset_type='cover')) AS books_missing_cover,
  (SELECT COUNT(*) FROM books b
     WHERE b.is_active AND b.is_available AND (b.stock_quantity IS NULL OR b.stock_quantity > 0)) AS books_saleable;
