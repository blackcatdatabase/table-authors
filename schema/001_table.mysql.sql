-- Auto-generated from schema-map-mysql.psd1 (map@c5e4097)
-- engine: mysql
-- table:  authors
CREATE TABLE IF NOT EXISTS authors (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  slug VARCHAR(255) NOT NULL UNIQUE,
  bio TEXT NULL,
  photo_url VARCHAR(255) NULL,
  story LONGTEXT NULL,
  books_count INT NOT NULL DEFAULT 0,
  ratings_count INT NOT NULL DEFAULT 0,
  rating_sum INT NOT NULL DEFAULT 0,
  avg_rating DECIMAL(3,2) NULL DEFAULT NULL,
  last_rating_at DATETIME(6) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  version INT UNSIGNED NOT NULL DEFAULT 0,
  deleted_at DATETIME(6) NULL,
  INDEX idx_authors_avg_rating (avg_rating),
  INDEX idx_authors_books_count (books_count)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
