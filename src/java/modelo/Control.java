/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.beans.*;
import java.io.Serializable;
import reserva.Servicio;
import datos.Conexion;
import java.util.Vector;
/**
 *
 * @author ILP
 */
public class Control implements Serializable {
     Conexion con= new Conexion();
    public static final String PROP_SAMPLE_PROPERTY = "sampleProperty";
    
    private String sampleProperty;
    
    private PropertyChangeSupport propertySupport;
    
    public Control() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public String getSampleProperty() {
        return sampleProperty;
    }
    
    public void setSampleProperty(String value) {
        String oldValue = sampleProperty;
        sampleProperty = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY, oldValue, sampleProperty);
    }
    
    public void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
     public Vector<Servicio> listarServicos(){
        return con.listaServicio();
    }
     
     public int RegitroServicios(String a,String b){
    return con.registrarServicio(a, b);
}
     public int ActualizarServicios(String a,String b){
    return con.actualizarServicio(a, b);
} 
     public int EliminareServicios(String a){
    return con.EliminarServicio(a);
}   
}