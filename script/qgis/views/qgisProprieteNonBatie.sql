-- Create view proprietenonbatie based on Qgis Models

CREATE OR REPLACE VIEW #schema_cadastrapp.proprietenonbatie AS 
	SELECT 
		proprietenonbatie.id_local, 
		proprietenonbatie.jdatat, 
		proprietenonbatie.comptecommunal, 
		proprietenonbatie.dnupro, 
		proprietenonbatie.cgocommune,  
		proprietenonbatie.ccopre, 
		proprietenonbatie.ccosec,
		proprietenonbatie.dnupla, 
		proprietenonbatie.parcelle, 
		proprietenonbatie.ccovoi, 
		proprietenonbatie.voie, 
		proprietenonbatie.ccoriv, 
		proprietenonbatie.dnvoiri, 
		proprietenonbatie.dindic, 
		proprietenonbatie.natvoi,
		proprietenonbatie.cconvo, 
		proprietenonbatie.dvoilib,
		proprietenonbatie.dparpi, 
		proprietenonbatie.gpafpd, 
		proprietenonbatie.ccostn, 
		proprietenonbatie.ccosub, 
		proprietenonbatie.cgrnum, 
		proprietenonbatie.dsgrpf, 
		proprietenonbatie.dclssf, 
		proprietenonbatie.cnatsp, 
		proprietenonbatie.dcntsf, 
		proprietenonbatie.drcsuba, 
		proprietenonbatie.pdl, 
		proprietenonbatie.dnulot, 
		proprietenonbatie.ccolloc, 
		proprietenonbatie.gnexts, 
		proprietenonbatie.jandeb, 
		proprietenonbatie.janimp, 
		proprietenonbatie.fcexb, 
		proprietenonbatie.pexn, 
		proprietenonbatie.dreflf,
		proprietenonbatie.majposa,
		proprietenonbatie.bisufad,
		proprietenonbatie.bisufad_dep,
		proprietenonbatie.bisufad_reg,
		proprietenonbatie.rcexnba
	FROM dblink('host=#DBHost_qgis dbname=#DBName_qgis user=#DBUser_qgis password=#DBpasswd_qgis'::text, 
		'select 
			sufex.suf as id_local,
			COALESCE(to_char(p.jdatat, ''DD/MM/YYYY''), '''') as jdatat,
			p.comptecommunal,
			p.dnupro,
			p.ccodep || p.ccodir ||	p.ccocom as cgocommune,
			p.ccopre,
			p.ccosec,
			ltrim(p.dnupla, '0') as dnupla,
			p.parcelle,
			p.ccovoi,
			p.voie,
			p.ccoriv,
			p.dnvoiri,
			p.dindic,
			v.natvoi,
			p.cconvo,
			v.libvoi as dvoilib,
			p.dparpi,
			p.gpafpd,
			suf.ccostn,
			suf.ccosub,
			suf.cgrnum,
			suf.dsgrpf,
			suf.dclssf,
			suf.cnatsp,
			suf.dcntsf,
			CAST (suf.drcsuba* 10 as integer) as drcsuba,
			suf.pdl,
			suf.dnulot,
			sufex.ccolloc,
			sufex.gnexts,
			sufex.jandeb,
			sufex.jfinex as janimp,
			sufex.fcexn as fcexb,
			sufex.pexn,
			p.dreflf,
			CAST (suftax.c1majposa * 10 as integer) as majposa,
			CAST (suftax.c1bisufad * 10 as integer) as bisufad,
			CAST (suftax.c2bisufad * 10 as integer) as bisufad_dep,
			CAST (suftax.c3bisufad * 10 as integer) as bisufad_reg,
			CAST (sufex.rcexnba * 10 as integer) as rcexnba
		from #DBSchema_qgis.parcelle p
			left join #DBSchema_qgis.voie v on v.voie=p.voie
			left join #DBSchema_qgis.suf on suf.comptecommunal=p.comptecommunal and p.parcelle=suf.parcelle
			left join #DBSchema_qgis.sufexoneration as sufex on sufex.suf=suf.suf
			left join #DBSchema_qgis.suftaxation as suftax on suftax.suf=suf.suf'::text)
	proprietenonbatie(
		id_local character varying(21),  
		jdatat character varying(10),  
		comptecommunal character varying(15), 
		dnupro character varying(6),
 		cgocommune character varying(6), 
 		ccopre character varying(3),
 		ccosec character varying(2),  
 		dnupla character varying(4), 
 		parcelle character varying(19),
 		ccovoi character varying(5), 
 		voie character varying(19), 
 		ccoriv character varying(4), 
 		dnvoiri character varying(4), 
 		dindic character varying(1), 
 		natvoi character varying(4), 
 		cconvo character varying(4), 
 		dvoilib character varying(26), 
 		dparpi character varying(4), 
 		gpafpd character varying(1),
 		ccostn character varying(1), 
 		ccosub character varying(2), 
 		cgrnum character varying(2),
 		dsgrpf character varying(2), 
 		dclssf character varying(2), 
 		cnatsp character varying(5),
 		dcntsf integer, 
 		drcsuba integer, 
 		pdl character varying(22), 
 		dnulot character varying(7), 
 		ccolloc character varying(2), 
 		gnexts character varying(2), 
 		jandeb character varying(4),
 		janimp character varying(4), 
 		fcexb character varying(10), 
 		pexn integer, 
 		dreflf character varying(5),
 		majposa integer,
		bisufad integer,
		bisufad_dep integer,
		bisufad_reg integer,
		rcexnba integer);


ALTER TABLE #schema_cadastrapp.proprietenonbatie OWNER TO #user_cadastrapp;
