/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author WINDOWS10
 */
public class Validar extends HttpServlet {
    
EmpleadoDAO edao = new EmpleadoDAO();
Empleado em= new Empleado();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         String accion = request.getParameter("accion");
        if (accion.equalsIgnoreCase("Ingresar")) {
         String user = request.getParameter("txtuser");
         String pass = request.getParameter("txtpass");
         em=edao.validar(user,pass);
            if (em.getUser() !=null) {
                request.setAttribute("usuario", em);
                request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
            }else{
                request.getRequestDispatcher("Error.jsp").forward(request, response);
            }
         
        }
        else{
             request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
        
    }
    
 
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
