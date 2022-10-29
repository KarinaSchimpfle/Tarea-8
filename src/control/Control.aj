package control;

import PaquetePersonajes.Personaje;

public aspect Control {

	//cuando aparece un premio (las tortuguitas) se imprime el texto correspondiente
	before(int x, int y):
		call(* *.generarDrop(int,int)) && args (x,y) {
			   
		  System.out.println("Ha caído un premio");
		}
	
	
	//despues del que el personaje agarre un premio (las tortuguitas) se imprime el texto correspondiente
	after(Personaje d): 
		call(* *.mejorar(Personaje)) && args (d) {
		
	      System.out.println("Se ha obtenido el premio");
	   }
	
}
