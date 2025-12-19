-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  authors

CREATE UNIQUE INDEX ux_authors_tenant_slug_live_ci ON authors (tenant_id, slug_ci, is_live);

CREATE UNIQUE INDEX ux_authors_tenant_id ON authors (tenant_id, id);

CREATE INDEX idx_authors_name_ci ON authors (tenant_id, name_ci);
