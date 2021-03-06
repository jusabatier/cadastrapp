-- Create views deschabitation, descproffessionnel, descdependance based on Qgis Models

COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.deschabitation IS 'Habitation';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.pev IS 'Partie d''évaluation';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.invar IS 'Num invariant';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnupev IS 'Num PEV';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.ccoaff IS 'Affectation PEV';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnupev_lib IS 'Libellé num PEV';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.ccoaff_lib IS 'Libellé affectation PEV';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnudes IS 'Num d''ordre de descriptif';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.detent IS 'Etat d''entretien';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dsupdc IS 'Superficie pièces';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbniv IS 'Nb niveau';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbpdc IS 'Nb pièces';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbppr IS 'Nb pièces principales';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbsam IS 'Nb salle à manger';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbcha IS 'Nb chambres';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbcu8 IS 'Nb cuisines de moins de 9m2';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbcu9 IS 'Nb cuisine de au moins de 9m2';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbsea IS 'Nb salle d''eau';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbann IS 'Nb pièces annexes';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbbai IS 'Nb baignoires';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbdou IS 'Nb douches';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnblav IS 'Nb lavabo';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dnbwc IS 'Nb WC';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.geaulc IS 'Présence eau';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gelelc IS 'Présence éléctricité';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.ggazlc IS 'Présence éléctricité';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gchclc IS 'Présence Chaufface central';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gteglc IS 'Présence tout à l''égout';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gesclc IS 'Présence escalier';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gasclc IS 'Présence ascenseur';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.gvorlc IS 'Présence vide-ordure';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.cconad_ga IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.cconav_cv IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.cconad_gr IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.cconav_tr IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dsueic_ga IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dsueic_cv IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dsueic_gr IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dsueic_tr IS '';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dmatgm IS 'Matériaux gros murs';
		COMMENT ON COLUMN #schema_cadastrapp.deschabitation.dmatto IS 'Matériaux toitures';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.invar IS 'Num invariant';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnudes IS 'Num. d''ordre de descriptif';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dsudep IS 'Surf. réelle de la dépendance';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbbai IS 'Nb baignoires';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbdou IS 'Nb douches';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnblav IS 'Nb lavabo';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbwc IS 'Nb WC';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.geaulc IS 'Présence eau';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.gelelc IS 'Présence éléctricité';
		COMMENT ON COLUMN #schema_cadastrapp.descdependance.gchclc IS 'Présence Chaufface central';




COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.descproffessionnel IS 'Habitat proffessionnel';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.pev IS 'Partie d''évaluation';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.invar IS 'Num invariant';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsupot IS 'Surf. pondérée';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsup1 IS 'Surf. parties principales';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsup2 IS 'Surf. parties secondaires couvertes';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsup3 IS 'Surf. parties secondaires non couvertes';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsupk1 IS 'Surf. stationnement couverts';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dsupk2 IS 'Surf. stationnement non couverts';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dnudes IS 'Num. d''ordre de descriptif';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.vsurzt IS 'Surf. réelles totale';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.ccocac IS 'Code categ. local';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dnutrf IS 'Secteur révisé';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dcfloc IS 'Coeff. localisation';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.ccortar IS 'Code commune origine du tarif';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.ccorvl IS 'Code réduction du local';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dtaurv IS 'Taux de réduction';
COMMENT ON COLUMN #schema_cadastrapp.descproffessionnel.dcmloc IS 'Coeff. modulation du local';

COMMENT ON MATERIALIZED VIEW #schema_cadastrapp.descdependance IS 'Dépendance';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.pev IS 'Partie d''évaluation';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.invar IS 'Num invariant';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnudes IS 'Num. d''ordre de descriptif';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dsudep IS 'Surf. réelle de la dépendance';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbbai IS 'Nb baignoires';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbdou IS 'Nb douches';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnblav IS 'Nb lavabo';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dnbwc IS 'Nb WC';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.geaulc IS 'Présence eau';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.gelelc IS 'Présence éléctricité';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.gchclc IS 'Présence Chaufface central';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dmatgm IS 'Matériaux gros murs';
COMMENT ON COLUMN #schema_cadastrapp.descdependance.dmatto IS 'Matériaux toitures';
