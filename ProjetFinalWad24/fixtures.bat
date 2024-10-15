@echo off
REM Ce fichier exécute les commandes de chargement des fixtures dans un projet Symfony

REM Naviguer jusqu'au répertoire du projet (assurez-vous que ce chemin est correct)
cd /d "C:\chemin\vers\ton\projet"

REM Afficher un message pour savoir ce que le script va faire
echo ================================
echo Chargement des fixtures Doctrine
echo ================================

REM Vider la base de données avant de charger les fixtures (optionnel)
echo Réinitialisation de la base de données...
php bin/console doctrine:database:drop --force
php bin/console doctrine:database:create
php bin/console doctrine:schema:update --force

REM Charger les fixtures dans la base de données
echo Chargement des fixtures...
php bin/console doctrine:fixtures:load --no-interaction

echo ================================
echo Fixtures chargées avec succès.
echo ================================

pause