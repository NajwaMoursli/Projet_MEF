Include "heat_donnees.pro";


h = 0.1;


Point(1) = {0, 0, 0,h};
Point(2) = {salon_x, 0, 0,h};
Point(3) = {salon_x, sdb_y-1.2*couloir_y, 0,h};
Point(4)= {salon_x + d, sdb_y-1.2*couloir_y, 0,h};
Point(5) = {salon_x + d, 0, 0,h};
Point(6) = {salon_x + d + entree_x, 0, 0,h};
Point(7) = {salon_x + d + entree_x , sdb_y-1.5, 0,h};
Point(8) = {salon_x + d + entree_x + d , sdb_y-1.5, 0,h};
Point(9) = {salon_x + d + entree_x + d, 0, 0,h};
Point(10) = {Long, 0, 0,h};
Point(11) = {Long, d+0.5, 0,h};
Point(12) = {salon_x + d + entree_x + d + 0.5 + porte, d+0.5, 0,h};
Point(13) = {salon_x + d + entree_x + d + 0.5 + porte, 2*d+0.5, 0,h};
Point(14) = {Long, 2*d+0.5, 0,h};
Point(15) = {Long, sdb_y + couloir_y-1.5, 0,h};
Point(16) = {cuisine_x - 4*d + salon_x + porte, sdb_y + couloir_y-1.5, 0, h};
Point(17) = {cuisine_x - 4*d + salon_x + porte, sdb_y + couloir_y-1.5 + d, 0, h};
Point(18) = {Long, sdb_y + couloir_y-1.5 + d, 0,h};
Point(19) = {Long, Larg, 0,h};
Point(20) = {cuisine_x + 2*d + salon_x-1.7, Larg , 0, h};
Point(21) = {cuisine_x + 2*d +salon_x-1.7, sdb_y+2, 0, h};
Point(22) = {cuisine_x + d + salon_x-1.7, sdb_y+2, 0, h};
Point(23) = {cuisine_x + d +salon_x-1.7, Larg, 0, h};
Point(24) = {0, Larg, 0, h};


//Fenêtres
Point(25) = {0, 8*d, 0, h};
Point(26) = {0, 4*d, 0, h};
Point(27) = {Long,sdb_y + couloir_y-4, 0, h};
Point(28) = {Long,sdb_y + couloir_y-2, 0, h};
Point(29) = {cuisine_x + 4*d + salon_x, Larg, 0, h};
Point(30) = {cuisine_x + 4*d + salon_x-2, Larg, 0, h};
Point(31) = {cuisine_x + d + salon_x-3,Larg, 0, h};
Point(32) = {cuisine_x + d + salon_x-5,Larg, 0, h};





//Radiateurs
Point(33)= {0, 16*d, 0, h};
Point(34) = {0, 12*d, 0, h};
Point(35) = {cuisine_x + 6*d + salon_x + porte, sdb_y + couloir_y-1.5, 0, h};
Point(36) = {cuisine_x + 2*d + salon_x + porte, sdb_y + couloir_y-1.5, 0, h};
Point(37) = {salon_x + d + entree_x , sdb_y-4.5, 0, h};
Point(38)= {salon_x + d + entree_x , sdb_y-2.5, 0, h};

// Pièces
Line(1) = {1,2}; 
Line(2) = {2,3}; 
Line(3) = {3,4};
Line(4) = {4,5};  
Line(5) = {5,6};
Line(6) = {6,37};
Line(32) = {38,7}; 
Line(7) = {7,8};
Line(8) = {8,9};
Line(9) = {9,10};
Line(10) = {10,11};
Line(11) = {11,12};
Line(12) = {12,13};
Line(13) = {13,14};
Line(14) = {14,27};
Line(33) = {28,15};
Line(15) = {15,35};
Line(38) = {36,16};
Line(16) = {16,17};
Line(17) = {17,18};
Line(18) = {18,19};
Line(19) = {19,29};
Line(34) = {30,20};
Line(20) = {20,21};
Line(21) = {21,22};
Line(22) = {22,23};
Line(23) = {23,31};
Line(35) = {32,24}; 
Line(24) = {24,33};
Line(36) = {34,25}; 
Line(37)= {26,1}; 

// Fenetres
Line(28) = {25,26};
Line(29) = {27,28};
Line(30) = {29,30};
Line(31) = {31,32};

// Radiateurs
Line(25) = {33,34};
Line(26) = {35,36};
Line(27) = {37,38};


// Maillage
Curve Loop(1) = {1,2,3,4,5,6,27,32,7,8,9,10,11,12,13,14,29,33,15,26,38,16,17,18,19,30,34,20,21,22,23,31,35,24,25,36,28,37};   
Plane Surface(1) = {1}; 
Physical Line(1) = {1,2,3,4,5,6,32,7,8,9,10,11,12,13,14,33,15,38,16,17,18,19,34,20,21,22,23,35,24,36,37};  
Physical Line(2) = {25,26,27};
Physical Line(3) = {28,27,29,30};
Physical Surface(1) = {1,2,3};



   

