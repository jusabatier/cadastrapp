-- Create commune Views based on Qgis Models
-- RTRIM is made on libcom because space exist in data from Qgis Model

-- DROP MATERIALIZED VIEW #schema_cadastrapp.commune ;

CREATE MATERIALIZED VIEW #schema_cadastrapp.commune AS 
	SELECT
		commune.cgocommune, -- Code commune INSEE
		commune.annee, -- Annee
		commune.clerivili, -- Zone alphabétique MAJIC2 - not use
		commune.libcom, -- Nom de commune
		commune.libcom_maj, -- Nom de commune majuscule
		commune.libcom_min, -- Nom de commune minuscule
		commune.typcom -- Différencie commune recensées de rurales - not use
	FROM dblink('host=#DBHost_qgis port=#DBPort_qgis dbname=#DBName_qgis user=#DBUser_qgis password=#DBpasswd_qgis'::text,
		'SELECT 
			communeqgis.ccodep|| communeqgis.ccodir|| communeqgis.ccocom as cgocommune,
			communeqgis.annee,
			communeqgis.clerivili,
			rtrim(communeqgis.libcom) as libcom,
			rtrim(upper(communeqgis.libcom)) as libcom_maj,
			rtrim(initcap(lower(communeqgis.libcom))) as libcom_min,
			typcom 
		FROM #DBSchema_qgis.commune communeqgis where typcom is not null'::text)
	commune(
		cgocommune character varying(6),
		annee character varying(4), 
		clerivili character varying(1), 
		libcom character varying(30), 
		libcom_maj character varying(30), 
		libcom_min character varying(30), 
		typcom character varying(1));

ALTER TABLE #schema_cadastrapp.commune OWNER TO #user_cadastrapp;
