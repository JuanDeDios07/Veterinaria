
package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;

import java.util.Vector;
import reserva.Servicio;

public class Conexion {
    PreparedStatement ps;
    Connection con;
    ResultSet rs;
    
    public Conexion(){
        
       try {
            Class.forName("com.mysql.jdbc.Driver");
           con =DriverManager.getConnection("jdbc:mysql://localhost:3309/veterinaria", "root", "root");
            System.out.println(" SE CONECTO CORECTAMENTE !!!!!!!!");
        } catch (Exception e) {
            System.out.println("NO SE CONECTO LA DASE DE DATO ???????"+e);
        }
    }
    
    public Vector<Servicio> listaServicio(){
        Vector<Servicio> m= new Vector<Servicio>();
        try {
            ps=con.prepareStatement("select * from servicio");
            rs=ps.executeQuery();
            
            while (rs.next()) {                
                Servicio servicio= new Servicio();
                servicio.setCod(rs.getString(1));
                servicio.setTipo(rs.getString(2));
                m.add(servicio);
                System.out.println("SE MOSTRO DE MANERA CORRECTA ¡¡¡¡¡¡¡¡¡¡¡¡¡¡");
            }
            
        } catch (Exception e) {
              System.out.println("ERROR AL MOSTRAR EL PRODUCTO ¡¡¡¡¡¡¡¡¡¡¡¡¡ "+e);
        }
        
        return m;
    }
    
     public int registrarServicio(String a,String b){
        int f=0;
        try {
           ps=con.prepareStatement("insert into servicio values(?,?)");
           ps.setString(1, a);
           ps.setString(2, b);
        
           
           f=ps.executeUpdate();
           
            System.out.println("REGISTRO CORECTO EL SERVICIO");
        } catch (Exception e) {
            System.out.println(" NO SE REGISTRO EL SERVICIO !!!!!!!!!!!!!"+e);
        }
        
        return f;
    }
     
       public int actualizarServicio(String a,String b){
        int f=0;
        try {
           ps=con.prepareStatement("UPDATE servicio SET tipo=? WHERE cod=?");
          
           ps.setString(1, b);
            ps.setString(2, a);
           
           f=ps.executeUpdate();
           
            System.out.println("SE ACTUALIZO CORECTO EL SERVICIO");
        } catch (Exception e) {
            System.out.println(" NO SE ACTUALIZO EL SERVICIO !!!!!!!!!!!!!"+e);
        }
        
        return f;
    }
       
      public int EliminarServicio(String a){
        int f=0;
        try {
           ps=con.prepareStatement("DELETE FROM servicio WHERE cod=? ");
          
            ps.setString(1, a);
           
           f=ps.executeUpdate();
           
            System.out.println("SE ELIMINO CORECTO EL SERVICIO");
        } catch (Exception e) {
            System.out.println(" NO SE ELIMINO EL SERVICIO !!!!!!!!!!!!!"+e);
        }
        
        return f;
    }
}

