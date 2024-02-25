# AFC-with-R-Python

Principe de l’analyse factorielle des correspondances :
L’AFC et une méthode statistique qui été présenté de façon complète dans les années 60 par
JEAN-PAUL BENZECRI cette technique statistique permet d’analyser la relation existante
entre deux variables par traitement des tableaux de données.

L’AFC consister à lire les informations contenues dans un tableaux contingence afin de
représente un résumé des résultats de l’analyse des données, sous la forme graphique d’un
nuage de points répartis sur un plan.

Objectif général de l’AFC donc est le même que ACP lire l’information contenue dans un
espace a plusieurs dimension (plusieurs variable qualitatif) et par une diminution de la
dimension de cet espace tout en conservant une quantité optimale de de l’information
figurant dans l’espace de départ

## Description des données
Ces données font partie de de l’ensemble des données publiées par Le Haut-commissariat au Plan
(HCP) de [Compte de nation](https://www.hcp.ma/Comptes-nationaux_r338.html) (Publié le 10/02/2022) : en fait les comptes nationaux constituent l’une
des composantes essentielles du système national d’information statistique. Ils donnent une
représentation chiffrée détaillée de l’économie nationale aux niveaux annuel et trimestriel. Leur
importance réside dans le rôle qu’ils peuvent jouer en tant qu’outil statistique pour notamment
l’analyse économique, la prise des décisions, la définition et la formulation des politiques économique
et sociale et les comparaisons internationales

![Screenshot from 2024-02-25 22-35-22](https://github.com/smdhen/AFC-with-R-Python/assets/96498289/5f0cdf3e-2a76-46f6-b879-06e0ab6b35af)

Les données sont répartition dans le couple (région/secteur d’activité)
- Région : Selon la nouvelle division régionale 12 région.
- Secteur d’activité :
1. A00 : Agriculture
2. B05 : Pèche
3. CD : Industrie extractive et transformation
4. E : production et distribution d’électricité et d’eau
5. F45 : Bâtiment et travaux publics
6. G00 : Commerce
7. INSEA 2022
8. 11H55 : Hotels et restaurants
9. I00 : Transport, postes et télécommunications
10. J00 : Activités financiers et assurance
11. K00 : Immobilier, location et services rendus aux entreprises
12. L75 : Administration publique générale et sécurité sociale
13. MNO : Education, sente et action sociale
14. OP : Autre services non financier
15. I-S/Pt : Impôts nets des subventions sur les produits

