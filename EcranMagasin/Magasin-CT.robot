*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Library           SikuliLibrary     WITH NAME       sk
Library           ImageHorizonLibrary       WITH NAME   IHL
Library           OperatingSystem
Suite Setup       ViderLogs
Suite Teardown    Stop Remote Server

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\imgProjet\\

*** Test Cases ***
Magasin-CT2.1
    selectionTypeCosmetique

Magasin-CT2.2
    nomsCosmetiques
    
Magasin-CT2.3
    prixCosmetique

Magasin-CT2.5
    cadenasCosmetique

Magasin-CT2.6
    selectionCosmetique

Magasin-CT2.7
    presentationCosmetiquesCochons 
    presentationCosmetiquesLoups
    presentationCosmetiquesTerrins

Magasin-CT3.1
    achatCochonAvecJetons

Magasin-CT3.2
    achatLoupAvecJetons

Magasin-CT3.3
    achatTerrinAvecJetons

Magasin-CT3.4
    achatCochonSansJetons

Magasin-CT3.5
    annulationAchat

Magasin-CT3.6
    verifPaiment

Magasin-CT5
    verificationRetour

*** Keywords ***

selectionTypeCosmetique
    sk.Click        jeu.png
    Sleep           2

    sk.Wait Until Screen Contain    \\banqueImage\\cochon1.png=0.99     2
    sk.Wait Until Screen Contain    \\banqueImage\\loup1.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\themes.png=0.99     2

nomsCosmetiques

    sk.Wait Until Screen Contain    \\Magasin-CT2\\classique.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\boueux.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\hiver.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\halooween.png=0.99     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\or.png=0.99     2

prixCosmetique

    sk.Wait Until Screen Contain    \\Magasin-CT2\\prixCosmetiquePiece.png=0.99     2
    
cadenasCosmetique

    sk.Wait Until Screen Contain    \\Magasin-CT2\\cadenas.png=0.99     2

selectionCosmetique

    sk.Wait Until Screen Contain    \\Magasin-CT2\\marqueUtilisation.png=0.99     2

presentationCosmetiquesCochons

    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom3.png=0.31     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom4.png=0.27     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\cochonZoom5.png=0.51     2
    
    sk.Click    \\Magasin-CT3\\btnRetour.png

presentationCosmetiquesLoups

    sk.Click       \\banqueImage\\loup1.png

    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom3.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom4.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\loupZoom5.png=0.9     2

    sk.Click    \\Magasin-CT3\\btnRetour.png

presentationCosmetiquesTerrins

    sk.Click        \\Magasin-CT2\\themes.png

    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom1.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom2.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom3.png=0.9     2
    sk.Wait Until Screen Contain    \\Magasin-CT2\\pailleZoom4.png=0.9     2

    sk.Click    \\Magasin-CT3\\btnRetour.png

achatCochonAvecJetons

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton2.png   2
    sk.Click    \\Magasin-CT3\\cochonZoom1.png
    sk.Click    \\Magasin-CT3\\pasCochonAchete.png
    sk.Click    \\Magasin-CT3\\accepterAchat.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\cosmetiqueCochonAchete.png     2
    sk.Click    \\Magasin-CT3\\btnRetour.png

achatLoupAvecJetons

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton2.png   2
    sk.Click    \\Magasin-CT3\\loupZoom1.png
    sk.Click    \\Magasin-CT3\\pasLoupAchete.png
    sk.Click    \\Magasin-CT3\\accepterAchat.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\cosmetiqueLoupAchete.png     2
    sk.Click    \\Magasin-CT3\\btnRetour.png

achatTerrinAvecJetons

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton2.png   2
    sk.Click    \\Magasin-CT3\\terrinZoom1.png
    sk.Click    \\Magasin-CT3\\pasTerrinAchete.png
    sk.Click    \\Magasin-CT3\\accepterAchat.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\cosmetiqueTerrinAchete.png     2
    sk.Click    \\Magasin-CT3\\btnRetour.png

achatCochonSansJetons

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton0.png   2
    sk.Click    \\Magasin-CT3\\cochonZoom1.png
    sk.Click    \\Magasin-CT3\\pasCochonAchete.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\messageErreur.png    2
    sk.Click    \\Magasin-CT3\\btnOk.png
    sk.Click    \\Magasin-CT3\\btnRetour.png

annulationAchat

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton2.png       2
    sk.Click    \\Magasin-CT3\\cochonZoom1.png
    sk.Click    \\Magasin-CT3\\pasCochonAchete.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\boiteDeDialogueAchat.png     2
    sk.Click    \\Magasin-CT3\\btnAnnuler.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\pasCochonAchete.png      2
    sk.Click    \\Magasin-CT3\\btnRetour.png

verifPaiment

    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton2.png       2
    sk.Click    \\Magasin-CT3\\cochonZoom1.png
    sk.Click    \\Magasin-CT3\\pasCochonAchete.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\boiteDeDialogueAchat.png     2
    sk.Click    \\Magasin-CT3\\accepterAchat.png
    sk.Wait Until Screen Contain    \\Magasin-CT3\\jeton0.png      2
    sk.Click    \\Magasin-CT3\\btnRetour.png

verificationRetour

    sk.Click    \\Magasin-CT5\\btnRetour.png
    sk.Wait Until Screen Contain   \\Magasin-CT5\\ecranAcceuil.png      2

ViderLogs
    Run     .\\clear_logs.bat

Add Needed Image Path
    Add Image Path      ${IMAGE_DIR}