# Projet de Maillage en Elements Finis 2020-2021
Enoncé : https://bthierry.pages.math.cnrs.fr/course-fem/projet/2020-2021/

Le but de ce projet est de résoudre le Problème ci-dessous par la méthode  des éléments finis P1- Lagrange:

<img src="https://user-images.githubusercontent.com/49198711/109036725-2f104980-76ca-11eb-9c4e-a6eb7249415c.png" width="45%"></img> 

Avec comme domaine de résolution cet appartement :
<img src="https://user-images.githubusercontent.com/49198711/109039816-806e0800-76cd-11eb-8a9c-b91bd908f7ba.png" width="90%"></img> 

# Les paramètres sont les suivants :
- La longueur L = 10
- La largeur l = 10
- L’épaisseur des murs d = 0.5
- Les températures Tc = 25 et Tf = −10 sont les températures respectivement des radiateurs  et de dehors
- L'entrée = 1
- La porte = 0.8
- Le couloir = 2.2
- Le salon = 3.5
- La cuisine = 1.5
- La salle de bain = 5
- Le flux est nul étant donné que les murs sont **supposées** isolants
- 4 fenêtres et 3 radiateurs

# Bibliothèques Python à avoir :
- scipy (https://www.scipy.org)
- numpy (http://www.numpy.org)
- math (https://docs.python.org/2/library/math.html)
- os (https://docs.python.org/fr/2.7/library/os.html)
- sys (https://docs.python.org/fr/3/library/sys.html)
- matplotlib (https://matplotlib.org/stable/index.html)

 # Pour télécharger :
- gmsh : http://gmsh.info
- onelab : https://onelab.info

# Procédure

1. En construisant la géométrie du problème : 
- En utilsant **gmsh** :
       => **heat.geo** avec les données de heat_donnes.geo qui crée heat.msh (les coordonnées du maillage)

- En utilisant **Python**:
      => **base.py** : contient les classes nécessaires pour construire le maillage *Point, Segment, Triplet, Triangle, Fonction de forme, Jacobienne et Bp = inv(J.T)  et Point de Gauss*
      => **maillage_pb.py**: construction du maillage à l'aide de gmsh *Mesh et GmshToMesh*

2. Programmation d'un code en élements finis P1 :
     => **P1_pb.py**: Par transformation du système en système matriciel tel que **Ax=b avec A=D+cM** donc définition de *Matrice de Masse, Matrice de Rigidité, Condition de Dirichlet* 
     
# Execution 

Trés simple : python3 resolution.py
Après l'execution voici ce que vous devez obtenir :

<img src="https://user-images.githubusercontent.com/49198711/109034606-1b63e380-76c8-11eb-8459-c8ab5dc2447d.png" width="90%"></img> 


