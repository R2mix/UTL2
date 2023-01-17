
boolean [] tableauBoolean = new boolean [8];       // liste de boolean de taille 8 en une dimention
boolean[][] boo = new boolean[4][6];               // liste de boolean de taille 8 en deux dimentions
IntList integer ;                                  // liste "évolutive"

void setup() {
  size(800, 600);
  tableauBoolean[4] = true;                        // mettre la case 4 à true
  boo[2][1] = true;                                // mettre la case en 2 - 1 à true
  println(boo[2][1]);                    

  printArray(tableauBoolean);                      // imprimer la totalité d'une liste dans la console

  integer = new IntList();                         // initialise la intlist class
  integer.append(15);                              // ajoute une case à la valeur 15 ...
  integer.append(16);
  integer.append(5);    
  integer.append(32851);

  printArray(integer);
  
  integer.set(1, 899);                            // remplace la case 1 par la valeur 899 ...
  integer.add(1, 101);
  println(integer.get(1));                        // lit la valeur de la case 1
}


void draw() {
}
