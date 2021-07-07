SELECT cron.schedule(
  '0 * * * *',
  $$REFRESH MATERIALIZED VIEW #schema_cadastrapp.org_autorisation$$
);
