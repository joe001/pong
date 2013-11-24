//Variables utilizados en el game:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
float X=320; 
float Y=240; 
float depX=3; 
float depY=3; 
float posY=240; 
float inicio;
float velocidady;
float velocidadx;
int cont1=0;
int cont2=0;
float iniciox=320;
float inicioy;
float velo=0;
int puntos=4;





void setup() { 
size(640, 480); 
frameRate(30); 
noStroke(); 
noSmooth(); 
noCursor(); 
rectMode(CENTER);
velocidady=random(3,10);
velocidadx=random(3,10);
inicio=random(30,450);
Y=inicio;

+





} 

void draw() { 
  background(0);
  if(cont1<=puntos && cont2<=puntos){//condicion de scores de jugadores con score ganador

PFont loose = loadFont("Looser!!!!.vlw" ); //crear objeto y abrir tipo de font
textFont(loose, 15); //iniciar el font y asignar tamaño
text("Jugador 1",195,15);//imprimir jugador 1 en pantalla 
text(cont1,360,15);//imprimir score jugador 1 en pantalla
text("Jugador 2",415,15);//imprimir jugador 2 en pantalla
text(cont2,280,15);//imprimir score jugador 2 en pantalla

for (int j=0; j<480; j=j+15) { //linea de enmedio
rect (320,j,5,14);}

rect(10,mouseY,10,60); 
rect(630,posY,10,60); 

ellipse(X,Y,20,20);
X=X+depX; 
Y=Y+depY;

if(Y>height-5 || Y<5) {depY=-depY;} 

if(X<=18 && X>= 8 && Y<mouseY+30 && Y>mouseY-30) //si la pelitita golpea con la barra regresa la pelota jugador 1
    {depX=-depX;
    velo++;
   if(velo>1)
     depX=depX*1.1;
    if(velo>3)
     depX=depX*1.3;
    if(velo>10) 
     depX=depX*1.5;
    if(velo>15)
     depX=depX*1.9;
}
     
if(X>=620 && X<=632 && Y<posY+30 && Y>posY-30) //si la pelitita golpea con la barra regresa la pelota jugador 2
    {depX=-depX;
     velo++;
    if(velo>1)
     depX=depX*1.1;
    if(velo>3)
     depX=depX*1.3;
    if(velo>10) 
     depX=depX*1.5;
    if(velo>15)
     depX=depX*1.9; 
   }


if(posY>30)
if(keyPressed && keyCode==UP){posY=posY-10;} //mover tecla arriba 
if(posY<450)
if(keyPressed && keyCode==DOWN){posY=posY+10;}//mover tecla abajo


if(X<5){     //si gana el jugador 2 iniciliza una nuevo juego con la pelotita e random
        cont1++;//aumenta score jug 1
        velo=0;
        depX=3;
        posicion();
        iniciar();
        velocidad();
    }

if(X>632){          //si gana el jugador 1 iniciliza una nuevo juego con la pelotita e random
              cont2++; //aumenta score jug 2
              velo=0;
              depX=3;
           posicion();      
           iniciar();
           velocidad();
          }
  }
  
  
  else{
               noLoop();
               perdedor();
               
               PFont na = loadFont("name.vlw" ); //crear objeto y abrir tipo de font
              textFont(na, 25); //iniciar el font y asignar tamaño
              text("Presiona p para continuar un nuevo juego",120,250);
               
               
  }
 
  }
  
  
  
  
  void keyPressed(){
  
  
     if (keyPressed) {
          if (key == 'p' || key == 'P') {
        velo=0;
        depX=3;
        posicion();
        iniciar();
        velocidad();
        cont1=0;
        cont2=0;
        velo=0;
         loop();
         }
     }
  
  }


