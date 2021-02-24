import gmsh
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import sys
from scipy.sparse import coo_matrix
from scipy.sparse.linalg import spsolve
from maillage_pb import *
from  P1_pb import *
from  base import *
import base as base
import P1_pb as P1_pb
import maillage_pb as maillage_pb


#Données
appartement=1
radiateur=2
fenetre=3

def f(x,y):
    return 0

def diri_fen(x,y):
    return -10

def diri_rad(x,y):
    return 25


    

# Model
msh=Mesh()

gmsh.initialize(sys.argv)
model = gmsh.model
model.add("Appartement")
msh.GmshToMesh(filename="heat.msh")

# Triplets
t = Triplet()
#print("[resolution.py] Calcul Matrice de Masse ...")
#P1_pb.Mass(msh, 2, appartement, t) #pas utile car c=0
print("[Assemblage] Calcul Matrice de Rigidité ...")
P1_pb.Rigidite(msh, 2,appartement, t)


b = np.zeros(msh.Npts,)
print("[Assemblage] Prise en compte de la condition de Dirichlet ...")
P1_pb.Dirichlet(msh, 1, fenetre, diri_fen, t, b)
P1_pb.Dirichlet(msh, 1, radiateur, diri_rad, t, b)

print("[Assemblage] Calcul du second membre ...")
P1_pb.Integrale(msh, 2, appartement, f, b, 2)

# Résolution
A = (coo_matrix(t.data)).tocsr()
print("[resolution] Résolution du système linéaire ...")
U = spsolve(A, b)

# Visualisation

x= [pt.x for pt in msh.points]
y= [pt.y for pt in msh.points]
       
### U approché
connectivity=[]
for tri in msh.triangles:
	connectivity.append([p.id - 1 for p in tri.p]) 

    
cmap = cm.get_cmap(name='cool', lut=None)
h=0.1;
plt.tricontourf(x, y, connectivity, U, cmap=cmap)
plt.colorbar()
plt.title("U approché pour h = {}".format(h))
plt.show()


    

# ==============
# Finalize GMSH
gmsh.finalize()
