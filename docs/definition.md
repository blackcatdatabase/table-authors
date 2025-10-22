<!-- Auto-generated from schema-map.psd1 @ 6cefe8e (2025-10-22T20:27:41+02:00) -->
# Definition – authors

Authors and aggregate rating counters.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| name | VARCHAR(255) | NO | — | Author display name. |  |
| slug | VARCHAR(255) | NO | — | URL-friendly unique slug. |  |
| bio | TEXT | YES | — | Short biography. |  |
| photo_url | VARCHAR(255) | YES | — | Profile photo URL. |  |
| story | LONGTEXT | YES | — | Long-form story/notes. |  |
| books_count | INT | NO | 0 | Denormalized number of books. |  |
| ratings_count | INT | NO | 0 | Total ratings count. |  |
| rating_sum | INT | NO | 0 | Sum of rating values. |  |
| avg_rating | DECIMAL(3,2) | YES | NULL | Average rating (derived). |  |
| last_rating_at | DATETIME(6) | YES | — | Timestamp of last rating. |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Row creation time (UTC). |  |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Row update time (UTC). |  |
| deleted_at | DATETIME(6) | YES | — | Soft delete timestamp. |  |