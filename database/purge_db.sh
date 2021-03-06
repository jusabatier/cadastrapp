#! /bin/bash

# ce script va supprimer toutes les tables et les vues / vues matérialisées
# sauf les tables relatives aux demandes d'information foncière


echo "--------------------------------------------------------------"
echo " Purge de la BD $cadastrappDBName"
echo "--------------------------------------------------------------"
echo ""

# Suppression des vues matérialisées
# avant les tables car il y a des dépendances

echo "  Suppression des vues matérialisées"

if [ "$uniqueDB" = True ] ; then
  replaceAndLaunch sql/vues/_drop.sql

elif [ "$uniqueDB" = False ] ; then  
  replaceAndLaunch sql/vues_dblink/_drop.sql
fi

echo "    Fait"

# Suppression des tables
echo "  Suppression des tables"
replaceAndLaunch sql/tables/_drop.sql
echo "    Fait"

echo ""
