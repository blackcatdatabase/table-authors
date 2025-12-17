-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  authors

CREATE UNIQUE INDEX ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX ux_authors_tenant_id ON authors (tenant_id, id);

CREATE INDEX idx_authors_name_ci ON authors (tenant_id, name_ci);
