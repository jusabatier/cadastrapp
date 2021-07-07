SELECT cron.schedule(
  '0 * * * *',
  $$REFRESH MATERIALIZED VIEW #cadastrapp_schema.org_autorisation$$
);
