package appideaswebupc.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import appideaswebupc.excepcion.DAOExcepcion;
import appideaswebupc.modelo.Usuario;
import appideaswebupc.negocio.GestionUsuario;

@Controller
public class UsuarioController {
	
	@RequestMapping(value = "/usuario")	
	protected ModelAndView inicio(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println("trabajando el formulario usuario");
		
		return new ModelAndView("form_usuario");
	}
	
	@RequestMapping(value = "/usuario_procesar")	
	protected ModelAndView login(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		System.out.println("Procesando el registro del usuario ....!!!!");
		
		
		GestionUsuario usuario = new GestionUsuario();

		try {
			
			String a = request.getParameter("txtA");
			String b = request.getParameter("txtB");
			String c = request.getParameter("txtC");
			String d = request.getParameter("genero");
			String e = request.getParameter("tipodocu");
			String f = request.getParameter("txtD");
			String g = request.getParameter("txtE");
			String h = request.getParameter("txtF");
			String i = request.getParameter("txtG");
			String j = request.getParameter("txtH");
			String k = request.getParameter("txtI");
			
			
			int j1 = Integer.parseInt(j);
			int k1 = Integer.parseInt(k);	
		

			Usuario usr = usuario.registrar (a, b, c, d, e, f, g, h, i, j1, k1);
			System.out.println("Se inserta el id: " + usr.getIdUsuario());
			


		} catch (DAOExcepcion e) {
			
		}
		
		return new ModelAndView("form_usuario");
	}

}
