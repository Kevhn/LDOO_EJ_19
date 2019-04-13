/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaDeUsuarios;

/**
 *
 * @author Kevin
 */
public class UsuarioNormal extends User{
    private String nombre;
    private String tipoDeSuscripcion;
    private String direccion;
    
    public UsuarioNormal(){
        
    }
    
    public UsuarioNormal(String usuario, String password, int id, String fechaDeNacimiento, String email, String nombre, String tipoDeSuscripcion, String direccion){
        setNombreDeUsuario(usuario);
        setPassword(password);
        setId(id);
        setFechaDeNacimiento(fechaDeNacimiento);
        setEmail(email);
        setNombre(nombre);
        setTipoDeSuscripcion(tipoDeSuscripcion);
        setDireccion(direccion);
        setTipoDeUsuario("Normal");
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
     /**
     * @return the tipoDeSuscripcion
     */
    public String getTipoDeSuscripcion() {
        return tipoDeSuscripcion;
    }

    /**
     * @param tipoDeSuscripcion the tipoDeSuscripcion to set
     */
    public void setTipoDeSuscripcion(String tipoDeSuscripcion) {
        this.tipoDeSuscripcion = tipoDeSuscripcion;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    
    @Override
    public void setTipoDeUsuario(String tipoDeUsuario){
        this.tipoDeUsuario = tipoDeUsuario;
    }
}
