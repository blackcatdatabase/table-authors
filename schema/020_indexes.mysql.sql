-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  authors

CREATE UNIQUE INDEX ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX ux_authors_tenant_id ON authors (tenant_id, id);

CREATE INDEX idx_authors_name_ci ON authors (tenant_id, (LOWER(name)));
