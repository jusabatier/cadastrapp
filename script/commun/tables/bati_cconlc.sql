CREATE TABLE #schema_cadastrapp.bati_cconlc (
    cconlc character varying(2) NOT NULL,
    cconlc_lib character varying
);

ALTER TABLE #schema_cadastrapp.bati_cconlc OWNER TO #user_cadastrapp;

ALTER TABLE ONLY #schema_cadastrapp.bati_cconlc
    ADD CONSTRAINT cconlc_pkey PRIMARY KEY (cconlc);

INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('AP', 'Appartement');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('AT', 'Antenne téléphone');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('AU', 'Autoroute');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('CA', 'Commerce sans boutique');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('CB', 'Local divers');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('CD', 'Dépendance commerciale');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('CH', 'Chantier');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('CM', 'Commerce avec boutique');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('DC', 'Dépendance lieux communs');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('DE', 'Dépendance bâtie isolée');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('LC', 'Local commun');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('MA', 'Maison');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('ME', 'Maison exceptionnelle');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('MP', 'Maison partagée par une limite territoriale');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('SM', 'Sol de maison');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U', 'Etablissement industriel');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U1', 'Gare');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U2', 'Gare : Triage');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U3', 'Gare : Atelier matériel');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U4', 'Gare : Atelier magasin');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U5', 'Gare : Dépôt - Titulaire');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U6', 'Gare : Dépôt - Réel');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U7', 'Gare : Matériel transport');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U8', 'Gare : Entretien matériel roulant');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('U9', 'Gare : Station usine');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('UE', 'Transformateur électrique');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('UG', 'Appareil à gaz');
INSERT INTO #schema_cadastrapp.bati_cconlc VALUES ('US', 'Etablissement industriel');

