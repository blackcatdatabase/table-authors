-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  authors

CREATE UNIQUE INDEX IF NOT EXISTS ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci) WHERE deleted_at IS NULL;

CREATE UNIQUE INDEX IF NOT EXISTS ux_authors_tenant_id ON authors (tenant_id, id);

CREATE INDEX IF NOT EXISTS idx_authors_avg_rating ON authors (avg_rating);

CREATE INDEX IF NOT EXISTS idx_authors_books_count ON authors (books_count);

CREATE INDEX IF NOT EXISTS idx_authors_name_ci   ON authors (lower(name));
