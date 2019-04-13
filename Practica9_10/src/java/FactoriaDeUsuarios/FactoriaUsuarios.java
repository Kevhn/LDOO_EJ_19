/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FactoriaDeUsuarios;

import java.util.HashMap;

/**
 *
 * @author Kevin
 */
public class FactoriaUsuarios {
    private static FactoriaUsuarios factoria;
    private HashMap<String, User> listaDeUsuarios = new HashMap();
    
    public FactoriaUsuarios(){        
    }
    
    public static FactoriaUsuarios getFactoria(){
        if (factoria == null){
            factoria = new FactoriaUsuarios();
        }
        return factoria;
    }
    
    public void agregarUsuario(String user, String password, String birthdate,String email, String usertype, int userid, int employeenumber, String name, String suscriptiontype, String address, String registerdate){
        listaDeUsuarios.put(user, crearUsuario(user, password, birthdate, email, usertype, userid, employeenumber, name, suscriptiontype, address, registerdate));
    }
    
    public User obtenerUsuario(String user){
        return listaDeUsuarios.get(user);
    }
    
    public static User crearUsuario(String user, String password, String birthdate,String email, String usertype, int userid, int employeenumber, String name, String suscriptiontype, String address, String registerdate){
        if (usertype.equals("Normal")){
            return new UsuarioNormal(user, password, userid, birthdate, email, name, suscriptiontype, address);
        }else if(usertype.equals("Admin")){
            return new UsuarioAdministrador(user, password, userid, birthdate, email, employeenumber);
        }else if(usertype.equals("Invitado")){
            return new UsuarioInvitado(user, password, userid, birthdate, email, name, registerdate);
        }
        
        return new UsuarioNormal("admin", "admin", 0, "0", "admin", "admin", "free", "null");
    }
}
