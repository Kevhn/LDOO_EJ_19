/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.User;

/**
 *
 * @author Kevin
 */
public class UserController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("nombre");
            String matricula = request.getParameter("matricula");
            String edad = request.getParameter("edad");
            String clave = request.getParameter("clave");
            if (nombre.equals("Kevin Reyes") && matricula.equals("1868332") && edad.equals("18") && clave.equals("admin")) {
                User user = new User();
                user.setNombre(request.getParameter("nombre"));
                user.setMatricula(request.getParameter("matricula"));
                user.setEdad(request.getParameter("edad"));
                user.setClave(request.getParameter("clave"));
                HttpSession session = request.getSession();
                session.setAttribute("nombre", user);
                session.setAttribute("matricula", user);
                session.setAttribute("edad", user);
                session.setAttribute("clave", user);
                Cookie cookieNombre = new Cookie("nombre", user.getNombre());
                cookieNombre.setMaxAge(420);
                response.addCookie(cookieNombre);
                out.println(user.getNombre());
                Cookie cookieMatricula = new Cookie("matricula", user.getMatricula());
                cookieMatricula.setMaxAge(420);
                response.addCookie(cookieMatricula);
                out.println(user.getMatricula());
                Cookie cookieEdad = new Cookie("edad", user.getEdad());
                cookieEdad.setMaxAge(420);
                response.addCookie(cookieEdad);
                out.println(user.getEdad());
                Cookie cookieClave = new Cookie("clave", user.getClave());
                cookieClave.setMaxAge(420);
                response.addCookie(cookieClave);
                out.println(user.getClave());
                request.getRequestDispatcher("ControlPanel").forward(request, response);
            }else{
                request.getRequestDispatcher("Error").forward(request, response);
            }
        }
    }

        // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
        /**
         * Handles the HTTP <code>GET</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Handles the HTTP <code>POST</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
