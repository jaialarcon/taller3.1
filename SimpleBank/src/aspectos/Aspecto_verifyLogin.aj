import java.io.File;
import java.util.*;
import java.io.*;
public aspect Aspecto_verifyLogin {
	private String nombre;
	private String cedula; 
    //Aspecto2: El login debe realizarse antes de la transacci�n
	pointcut login(): call(void make*() ) || call(void my*() );
	before(): login(){
		
		System.out.println("Debe loggearse primero");
		
		System.out.println("User");
		Scanner nombre = new Scanner(System.in);
		nombre.nextLine();
		System.out.println("ID");
		Scanner cedula= new Scanner(System.in);
		cedula.nextLine();
	}
	
	after(): login(){
		 File file = new File("log.txt");
		 
		 Calendar cal = Calendar.getInstance();
		 FileWriter fichero = null;
	     
		 PrintWriter pw = null;
	        try
	        {
	            fichero = new FileWriter(file,true);
	            BufferedWriter bw= new BufferedWriter(fichero);
	            pw = new PrintWriter(bw);

	            pw.println("Transaccion realizada con exito " + cal.getTime());
	            System.out.println("Transaccion realizda " + cal.getTime());

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	           try {
	           if (null != fichero)
	              fichero.close();
	           } catch (Exception e2) {
	              e2.printStackTrace();
	           }
	        }
	        
	        
	}
}
