/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet.UserLogin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.senac.sp.dao.*;
import br.senac.sp.model.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author adm
 */
public class UserLogin extends HttpServlet {

   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/UserLogin.jsp").forward(request, response);
       

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String senha = request.getParameter("password");
        
        
        try {
        
          Customer customer = CustomerDAO.validaLogin(username, senha);
            System.out.println(customer.getCustomer_name());
            if(customer != null){
                HttpSession sessao = request.getSession();
                sessao.setAttribute("user", customer);
                response.sendRedirect(request.getContextPath() + "/Home_Servlet");
                System.out.println("validado...");
            }
            else {
                request.setAttribute("msgErro", "Usuário ou senha Inválidos");
                request.getRequestDispatcher("/WEB-INF/UserLogin.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        
    }

   
   
}