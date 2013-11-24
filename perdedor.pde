 
 void perdedor(){
                  
 if(cont1>cont2){
               PFont jugador1 = loadFont("jug1.vlw" );//crear objeto y abrir tipo de font
               textFont(jugador1, 15);//iniciar el font y asignar tamaño
               text("Perdedor",75,70);
               PFont jugador2 = loadFont("jug1.vlw" );//crear objeto y abrir tipo de font
               textFont(jugador2, 35);//iniciar el font y asignar tamaño
               text("Ganador",400,70);
             }     
  if(cont1<cont2){
               PFont jugador1 = loadFont("jug1.vlw" );//crear objeto y abrir tipo de font
               textFont(jugador1, 15);//iniciar el font y asignar tamaño
               text("Perdedor",500,70);
               
               PFont jugador2 = loadFont("jug1.vlw" );//crear objeto y abrir tipo de font
               textFont(jugador2, 35);//iniciar el font y asignar tamaño
               text("Ganador",75,70);
            }     
            PFont loose = loadFont("Looser!!!!.vlw" ); //crear objeto y abrir tipo de font
            textFont(loose, 15); //iniciar el font y asignar tamaño
            text("Jugador 1",35,15);
            text(cont1,380,15);
            text("Jugador 2",515,15);
            text(cont2,280,15);

         
 }
