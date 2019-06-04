package aspectos;
import java.io.*;
import java.util.*;

aspect Aspecto_log {
	 //File file = new File("log.txt");
	  //Calendar cal = Calendar.getInstance();
	    //Aspecto1: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
	    
	    
	    pointcut terminado() : call(void createUser() );
	    after() : terminado() {
	    	System.out.println("**** User created ****");
	    }
	}
