package appideaswebupc.web;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


//import edu.upc.sistemaventas.dominio.CategoriaDomain;
//import edu.upc.sistemaventas.negocio.CategoriaPlanNegocio;




import appideaswebupc.dao.UsuarioDAO;
import appideaswebupc.modelo.Idea;
import appideaswebupc.modelo.Usuario;


//import edu.upc.sistemaventas.dominio.EmprendedorDomain;
//import edu.upc.sistemaventas.dominio.SabioDomain;
//
//import edu.upc.sistemaventas.negocio.EmprendedorLogicaNegocio;
//import edu.upc.sistemaventas.negocio.SabioLogicaNegocio;


@Controller
public class IndexController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)	
	protected ModelAndView inicio(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		return new ModelAndView("login");
	}

/*dmc*/
        
	@RequestMapping(value = "/login", method = RequestMethod.POST)	
	protected ModelAndView login(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
        String correo = request.getParameter("txtCorreo");
        String password = request.getParameter("txtPassword");
        
        System.out.println("correo : " + correo);
        System.out.println("password : " + password);
        
        //--EmprendedorDomain empDomain = new EmprendedorDomain();
        
        //SabioDomain sabioDomain = new SabioDomain();
        
        //--EmprendedorLogicaNegocio empNegocio = new EmprendedorLogicaNegocio();
        
        //SabioLogicaNegocio sabioNegocio = new SabioLogicaNegocio();
               
        UsuarioDAO usuario = new UsuarioDAO();
        System.out.println("Info de Logeo, sigo por aqui...");
        
        Usuario empDomain = usuario.getLoginUsuario(correo, password);
         if (empDomain != null) 
         {
             System.out.println("Info de Usuario o Docente");
             System.out.println("Nombre : " + empDomain.getNombres());
             System.out.println("Correo : " + empDomain.getCorreo());
             System.out.println("Password : " + empDomain.getContrasena());
             
             HttpSession session = request.getSession(true);
                session.setAttribute("usuario", empDomain);
                session.setAttribute("idusuario", empDomain.getIdUsuario());
                session.setAttribute("ID", session.getId());

                if (empDomain.getObTipoUsuario().getTipo().equals("ESTUDIANTE")){
                	response.sendRedirect("PrincipalEstudiante.html");
                } else if (empDomain.getObTipoUsuario().getTipo().equals("COORDINADOR")) {
                response.sendRedirect("PrincipalCoordinador.html");
                }
                
                //if (usuario.getAutorizacion().equals("ADMIN")) {
                    //response.sendRedirect("PrincipalEmprendedor.html");

                
         }
         else
         {
//              System.out.println("no soy emp...");
//              sabioDomain = sabioNegocio.getLoginSabio(correo, password);
//              
//              if (sabioDomain != null) 
//                {
//                    System.out.println("Info de Sabio");
//                    System.out.println("Nombre : " + sabioDomain.getNombres());
//                    System.out.println("Correo : " + sabioDomain.getCorreo());
//                    System.out.println("Password : " + sabioDomain.getClave());
//
//                    HttpSession session = request.getSession(true);
//                       session.setAttribute("usuario", sabioDomain);
//                       session.setAttribute("idusuario", sabioDomain.getId());
//                       session.setAttribute("ID", session.getId());
//
//                       //if (usuario.getAutorizacion().equals("ADMIN")) {
//                           response.sendRedirect("PrincipalSabio.html");
//
//                       /*} else if (usuario.getAutorizacion().equals("CLIENT")) {
//                           response.sendRedirect("view/welcomeClient.jsp");
//                       }*/
//                }
//              else
//              {
//                   System.out.println("no soy sabio...");
//                   System.out.println(correo.equals("admin@upc.edu.pe"));
//                        System.out.println(password.equals("admin"));
                        
                  if (correo.equals("admin@upc.edu.pe") && password.equals("admin"))
                    {
                        System.out.println(correo.equals("admin@upc.edu.pe"));
                        System.out.println(password.equals("admin"));
                        
                        System.out.println("soy admin...");
                        System.out.println("Info de Administrador");
                        
                       // empDomain = empNegocio.buscarEmprendedor(1);
                        
                         empDomain.setNombres("Administrador del Sistema");
                         empDomain.setCorreo("admin@upc.edu.pe");
                         empDomain.setContrasena("admin");

                         System.out.println("Nombre : " + empDomain.getNombres());
                         System.out.println("Correo : " + empDomain.getCorreo());
                         System.out.println("Password : " + empDomain.getContrasena());

                         HttpSession session = request.getSession(true);
                            session.setAttribute("usuario", empDomain);
                            //session.setAttribute("idusuario", empDomain.getidUsuario());
                            session.setAttribute("ID", session.getId());

                            //if (usuario.getAutorizacion().equals("ADMIN")) {
                                response.sendRedirect("PrincipalAdmin.html");
                                //return new ModelAndView("logeo");
                    }
                  else
                  {
                      request.setAttribute("mensaje", "La credenciales no son validas");
                  }
                
//              }
         }
         
        
        //Integer idusuario = daoUsuario.autentica(correo, password);
        
		return new ModelAndView("login");
	}        

  
}
