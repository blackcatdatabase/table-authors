# authors

Authors and aggregate rating counters.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| books_count | mysql: INT / postgres: INTEGER | NO | 0 | Denormalized number of books. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Row creation time (UTC). |
| slug | VARCHAR(255) | NO |  | URL-friendly unique slug. |
| last_rating_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Timestamp of last rating. |
| rating_sum | mysql: INT / postgres: INTEGER | NO | 0 | Sum of rating values. |
| avg_rating | mysql: DECIMAL(3,2) / postgres: NUMERIC(3,2) | YES | NULL | Average rating (derived). |
| story | mysql: LONGTEXT / postgres: TEXT | YES |  | Long-form story/notes. |
| photo_url | VARCHAR(255) | YES |  | Profile photo URL. |
| ratings_count | mysql: INT / postgres: INTEGER | NO | 0 | Total ratings count. |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Row update time (UTC). |
| name | VARCHAR(255) | NO |  | Author display name. |
| bio | TEXT | YES |  | Short biography. |
| id | BIGINT | NO |  | Surrogate primary key. |
| deleted_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Soft delete timestamp. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_authors_tenant_id | tenant_id, id |
| ux_authors_tenant_slug_live_ci | tenant_id, slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_authors_avg_rating | avg_rating | INDEX idx_authors_avg_rating (avg_rating) |
| idx_authors_books_count | books_count | INDEX idx_authors_books_count (books_count) |
| idx_authors_name_ci | tenant_id,name_ci | CREATE INDEX idx_authors_name_ci ON authors (tenant_id, name_ci) |
| ux_authors_tenant_id | tenant_id,id | CREATE UNIQUE INDEX ux_authors_tenant_id ON authors (tenant_id, id) |
| ux_authors_tenant_slug_live_ci | tenant_id,slug_ci,is_live | CREATE UNIQUE INDEX ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci, is_live) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_authors_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_authors_tenant_id | tenant_id, id |
| ux_authors_tenant_slug_live_ci | tenant_id, slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_authors_avg_rating | avg_rating | CREATE INDEX IF NOT EXISTS idx_authors_avg_rating ON authors (avg_rating) |
| idx_authors_books_count | books_count | CREATE INDEX IF NOT EXISTS idx_authors_books_count ON authors (books_count) |
| idx_authors_name_ci | tenant_id,name_ci | CREATE INDEX IF NOT EXISTS idx_authors_name_ci   ON authors (tenant_id, name_ci) |
| ux_authors_tenant_id | tenant_id,id | CREATE UNIQUE INDEX IF NOT EXISTS ux_authors_tenant_id ON authors (tenant_id, id) |
| ux_authors_tenant_slug_live_ci | tenant_id,slug_ci,is_live | CREATE UNIQUE INDEX IF NOT EXISTS ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci, is_live) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_authors_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_authors | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_authors | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
