<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – authors

Authors and aggregate rating counters.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| tenant_id | BIGINT | NO | — |  |  |
| name | VARCHAR(255) | NO | — | Author display name. |  |
| slug | VARCHAR(255) | NO | — | URL-friendly unique slug. |  |
| slug_ci | TEXT | — | — |  |  |
| bio | TEXT | YES | — | Short biography. |  |
| photo_url | VARCHAR(255) | YES | — | Profile photo URL. |  |
| story | TEXT | YES | — | Long-form story/notes. |  |
| books_count | INTEGER | NO | 0 | Denormalized number of books. |  |
| ratings_count | INTEGER | NO | 0 | Total ratings count. |  |
| rating_sum | INTEGER | NO | 0 | Sum of rating values. |  |
| avg_rating | NUMERIC(3,2) | YES | NULL | Average rating (derived). |  |
| last_rating_at | TIMESTAMPTZ(6) | YES | — | Timestamp of last rating. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Row creation time (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Row update time (UTC). |  |
| version | INTEGER | NO | 0 |  |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — | Soft delete timestamp. |  |
| is_live | BOOLEAN | YES | — |  |  |