@echo off
title TMeSmart - Lancement...
echo.
echo ============================================
echo    TMeSmart - Plateforme EPS Professeur
echo ============================================
echo.
echo Demarrage du serveur local...

REM Verifier si Python est disponible
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Serveur HTTP demarre sur http://localhost:8765
    echo L'application va s'ouvrir dans votre navigateur...
    echo.
    echo [Fermez cette fenetre pour arreter l'application]
    start "" "http://localhost:8765"
    python -m http.server 8765
    goto :end
)

REM Verifier si Python3 est disponible
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    echo Serveur HTTP demarre sur http://localhost:8765
    echo L'application va s'ouvrir dans votre navigateur...
    echo.
    echo [Fermez cette fenetre pour arreter l'application]
    start "" "http://localhost:8765"
    python3 -m http.server 8765
    goto :end
)

REM Verifier si Node.js est disponible
npx --version >nul 2>&1
if %errorlevel% == 0 (
    echo Serveur HTTP demarre sur http://localhost:8765
    echo L'application va s'ouvrir dans votre navigateur...
    echo.
    echo [Fermez cette fenetre pour arreter l'application]
    start "" "http://localhost:8765"
    npx serve -l 8765 .
    goto :end
)

REM Aucun serveur disponible - ouvrir directement (peut ne pas fonctionner)
echo ATTENTION: Python et Node.js non trouves.
echo Ouverture directe dans le navigateur (peut ne pas fonctionner).
echo Pour un meilleur resultat, installez Python: https://python.org
echo.
start "" "index.html"
pause

:end
