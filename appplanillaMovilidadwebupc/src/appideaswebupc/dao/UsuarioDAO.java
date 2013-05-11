package appideaswebupc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import appideaswebupc.excepcion.DAOExcepcion;
import appideaswebupc.modelo.CentroFormacion;
import appideaswebupc.modelo.TipoUsuario;
import appideaswebupc.modelo.Usuario;
import appideaswebupc.util.ConexionBD;

public class UsuarioDAO extends BaseDAO {
	
	public Collection<Usuario> buscarPorNombre(String nombres)
			throws DAOExcepcion {
		String query = "select * from usuario where nombres like ?";
		Collection<Usuario> lista = new ArrayList<Usuario>();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = ConexionBD.obtenerConexion();
			stmt = con.prepareStatement(query);
			stmt.setString(1, "%" + nombres + "%");
			rs = stmt.executeQuery();
			while (rs.next()) {
				Usuario vo = new Usuario();
				vo.setIdUsuario(rs.getInt("idUsuario"));
				vo.setNombres(rs.getString("nombres"));
				vo.setPaterno(rs.getString("apellido paterno"));
				vo.setMaterno(rs.getString("apellido materno"));
				lista.add(vo);
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOExcepcion(e.getMessage());
		} finally {
			this.cerrarResultSet(rs);
			this.cerrarStatement(stmt);
			this.cerrarConexion(con);
		}
		System.out.println(lista.size());
		return lista;
	}
		
	public Usuario registrar(Usuario vo) throws DAOExcepcion {
			String query = "insert into usuario (nombres,paterno,materno,sexo,tipo_documento,num_documento,correo,celular,password,Tipo_usuario_idTipo,Centro_Formacion_idCentro) " +
					       "values (?,?,?,?,?,?,?,?,?,?,?)";
			Connection con = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			try {
				con = ConexionBD.obtenerConexion();
				stmt = con.prepareStatement(query);
				stmt.setString(1, vo.getNombres());
				stmt.setString(2, vo.getPaterno());
				stmt.setString(3, vo.getMaterno());
				stmt.setString(4, vo.getSexo());
				stmt.setString(5, vo.getTipoDocumento());
				stmt.setString(6, vo.getNumDocumento());
				stmt.setString(7, vo.getCorreo());
				stmt.setString(8, vo.getCelular());
				stmt.setString(9, vo.getContrasena());
				stmt.setInt(10, vo.getObTipoUsuario().getIdTipoUsuario());
				stmt.setInt(11, vo.getObCentroFormacion().getIdCentro());
				
				int i = stmt.executeUpdate();
				if (i != 1) {
					throw new SQLException("No se pudo registrar");
				}
				// Obtener el ultimo id
				int id = 0;
				query = "select last_insert_id()";
				stmt = con.prepareStatement(query);
				rs = stmt.executeQuery();
				if (rs.next()) {
					id = rs.getInt(1);
				}
				vo.setIdUsuario(id);

			} catch (SQLException e) {
				System.out.println("No se pudo registar");
				//System.err.println(e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarResultSet(rs);
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			return vo;
		}
		
	public Usuario actualizar(Usuario vo) throws DAOExcepcion {
			String query = "update usuario set nombres=?,paterno=?,materno=?,sexo=?,tipo_documento=?,num_documento=?,correo=?,celular=?,password=?,Tipo_usuario_idTipo=?,Centro_Formacion_idCentro=? where idUsuario=?";
			Connection con = null;
			PreparedStatement stmt = null;
			try {
				con = ConexionBD.obtenerConexion();
				stmt = con.prepareStatement(query);
				stmt.setString(1, vo.getNombres());
				stmt.setString(2, vo.getPaterno());
				stmt.setString(3, vo.getMaterno());
				stmt.setString(4, vo.getSexo());
				stmt.setString(5, vo.getTipoDocumento());
				stmt.setString(6, vo.getNumDocumento());
				stmt.setString(7, vo.getCorreo());
				stmt.setString(8, vo.getCelular());
				stmt.setString(9, vo.getContrasena());
				stmt.setInt(10, vo.getObTipoUsuario().getIdTipoUsuario());
				stmt.setInt(11, vo.getObCentroFormacion().getIdCentro());
				stmt.setInt(12, vo.getIdUsuario());
				
				
				int i = stmt.executeUpdate();
				if (i != 1) {
					throw new SQLException("No se pudo actualizar");
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			return vo;
		}
		
	public Collection<Usuario> listar() throws DAOExcepcion {
			Collection<Usuario> c = new ArrayList<Usuario>();
			Connection con = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			try {
				con = ConexionBD.obtenerConexion();
				String query = "select * from usuario order by paterno";
				stmt = con.prepareStatement(query);
				rs = stmt.executeQuery();
				while (rs.next()) {
					Usuario vo = new Usuario();
					vo.setIdUsuario(rs.getInt("idUsuario"));
					vo.setNombres(rs.getString("nombres"));
					vo.setPaterno(rs.getString("Paterno"));
					vo.setMaterno(rs.getString("Materno"));
					c.add(vo);
				}

			} catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarResultSet(rs);
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			return c;
		}
		
	public Usuario obtener(int idUsuario) throws DAOExcepcion {
			Usuario vo = new Usuario();
			Connection con = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			try {
				String query = "select * from usuario where idUsuario=?";
				con = ConexionBD.obtenerConexion();
				stmt = con.prepareStatement(query);
				stmt.setInt(1, idUsuario);
				rs = stmt.executeQuery();
				if (rs.next()) {
					vo.setIdUsuario(rs.getInt(1));
					vo.setNombres(rs.getString(2));
					vo.setPaterno(rs.getString(3));
					vo.setMaterno(rs.getString(4));
					vo.setSexo(rs.getString(5));
					vo.setTipoDocumento(rs.getString(6));
					vo.setNumDocumento(rs.getString(7));
					vo.setCorreo(rs.getString(8));
					vo.setCelular(rs.getString(9));
					vo.setContrasena(rs.getString(10));
					vo.setIdUsuario(rs.getInt(idUsuario));
										
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarResultSet(rs);
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			return vo;
		}

	public void eliminar(int idUsuario) throws DAOExcepcion {
		String query = "delete from usuario WHERE idUsuario=?";
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = ConexionBD.obtenerConexion();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, idUsuario);
			int i = stmt.executeUpdate();
			if (i != 1) {
				throw new SQLException("No se pudo eliminar");
			}
		} catch (SQLException e) {
			System.err.println(e.getMessage());
			throw new DAOExcepcion(e.getMessage());
		} finally {
			this.cerrarStatement(stmt);
			this.cerrarConexion(con);
		}
	}
	
	 public Usuario getLoginUsuario(String strCorreo, String strPassword) throws DAOExcepcion {
		    Usuario vo = new Usuario();
		    CentroFormacion ce = new CentroFormacion();
		    TipoUsuario tip = new TipoUsuario();
			Connection con = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
		 
//		    String query = "select u.* ";
//		    query += "        from usuario u ";
//		    query += "       where u.correo = ? ";
//		    query += "       and u.password = ? ";
		    
		    String query = "select u.*, t.tipo ";
		    query += "  from usuario u ,tipousuario t ";
		    query += "	where u.tipousuario_idtipousuario=t.idtipousuario ";
		    query += "	and u.correo = ? ";
		    query += " 	and u.password = ? ";
		    
		    try {
		    	con = ConexionBD.obtenerConexion();
				stmt = con.prepareStatement(query);
				stmt.setString(1, strCorreo);
				stmt.setString(2, strPassword);
				rs = stmt.executeQuery();
		   
		      if (rs.next()) {
		    	    vo.setIdUsuario(rs.getInt(1));
					vo.setNombres(rs.getString(2));
					vo.setPaterno(rs.getString(3));
					vo.setMaterno(rs.getString(4));
					vo.setSexo(rs.getString(5));
					vo.setTipoDocumento(rs.getString(6));
					vo.setNumDocumento(rs.getString(7));
					vo.setCorreo(rs.getString(8));
					vo.setCelular(rs.getString(9));
					vo.setContrasena(rs.getString(10));
					ce.setIdCentro(rs.getInt(11));
					vo.setObCentroFormacion(ce);
					tip.setIdTipoUsuario(rs.getInt(12));
					tip.setTipo(rs.getString(13));
					vo.setObTipoUsuario(tip);
		      }
		    }catch (SQLException e) {
				System.err.println(e.getMessage());
				throw new DAOExcepcion(e.getMessage());
			} finally {
				this.cerrarResultSet(rs);
				this.cerrarStatement(stmt);
				this.cerrarConexion(con);
			}
			return vo;
		  }

}