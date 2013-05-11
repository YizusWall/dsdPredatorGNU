package appideaswebupc.negocio;

import java.util.Collection;

import appideaswebupc.dao.UsuarioDAO;
import appideaswebupc.excepcion.DAOExcepcion;
import appideaswebupc.modelo.CentroFormacion;
import appideaswebupc.modelo.TipoUsuario;
import appideaswebupc.modelo.Usuario;

public class GestionUsuario {
	
	public Collection<Usuario> buscarPorNombre(String nombres)
			throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();
		return dao.listar();
	}

	public Usuario registrar (String nombres, String paterno,
			String materno, String sexo, String tipoDocumento,
			String numDocumento, String correo, String celular,
			String contrasena, int TipoUsuario_idTipoUsuario,
			int CentroFormacion_idCentro)
	
	
	
		throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();

		Usuario vo = new Usuario();
		
		TipoUsuario vu = new TipoUsuario();
		vu.setIdTipoUsuario(TipoUsuario_idTipoUsuario);
		
		CentroFormacion ce = new CentroFormacion();
		ce.setIdCentro(CentroFormacion_idCentro);
		
		if(nombres!="" && paterno!="" && materno!="" && sexo!="" && 
				numDocumento!="" && correo!="" && celular!="" && contrasena!=""){
		
		vo.setNombres(nombres);
		vo.setPaterno(paterno);
		vo.setMaterno(materno);
		vo.setSexo(sexo);
		vo.setTipoDocumento(tipoDocumento);
		vo.setNumDocumento(numDocumento);
		vo.setCorreo(correo);
		vo.setCelular(celular);
		vo.setContrasena(contrasena);
		vo.setObTipoUsuario(vu);
		vo.setObCentroFormacion(ce);

		return dao.registrar(vo);
		}
		
		System.out.println("falta llenar un dato");
		return null;
	}
	
	public Usuario actualizar(String nombres, String paterno,
			String materno, String sexo, String tipoDocumento,
			String numDocumento, String correo, String celular,
			String contrasena, int TipoUsuario_idTipoUsuario,
			int CentroFormacion_idCentro) 
				
		throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();
		
		TipoUsuario ti = new TipoUsuario();
		ti.setIdTipoUsuario(TipoUsuario_idTipoUsuario);
		
		CentroFormacion ce = new CentroFormacion();
		ce.setIdCentro(CentroFormacion_idCentro);

		Usuario vo = new Usuario();
		vo.setNombres(nombres);
		vo.setPaterno(paterno);
		vo.setMaterno(materno);
		vo.setSexo(sexo);
		vo.setTipoDocumento(tipoDocumento);
		vo.setNumDocumento(numDocumento);
		vo.setCorreo(correo);
		vo.setCelular(celular);
		vo.setContrasena(contrasena);
		vo.setObTipoUsuario(ti);
		vo.setObCentroFormacion(ce);
		

		return dao.actualizar(vo);
	}
	
	public Usuario obtener(int idUsuario) throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();
		return dao.obtener(idUsuario);
	}
	
	public void eliminar(int idUsuario) throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();
		dao.eliminar(idUsuario);
	}
	
	public Collection<Usuario> listar() throws DAOExcepcion {
		UsuarioDAO dao = new UsuarioDAO();
		return dao.listar();
	}
	
	public Usuario getLoginUsuario(String strCorreo, String strPassword) {
	    try {
	      UsuarioDAO usuario = new UsuarioDAO();
	      return usuario.getLoginUsuario(strCorreo, strPassword);
	    } catch (Exception ex) {
	      ex.printStackTrace();
	    }
	    return null;
	  }
}


