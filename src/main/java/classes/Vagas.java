package classes;
import java.sql.*;

public class Vagas {
	private int idvaga_cc;
	private String descricao_cc;
	private String req_obrigatorios_cc;
	private String req_desejaveis_cc;
	private float remuneracao_cc;
	private int aberta_cc;
	private String beneficios_cc;
	private String local_trabalho_cc;
	
	public void Incluir() 
	{
		try {
			// conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
	        // inclusão modo objeto PreparedStatement
			String Sql = "insert into "
	        		+ "vagas(descricao,req_obrigatorios,req_desejaveis,remuneracao,beneficios,local_trabalho) "
	        		+ "values(?,?,?,?,?,?)";
	        PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);	        
	        // inclusão modo objeto PreparedStatement - continuação
	        comando.setString(1, descricao_cc);
	        comando.setString(2, req_obrigatorios_cc);
	        comando.setString(3, req_desejaveis_cc);
	        comando.setFloat(4, remuneracao_cc);
	        comando.setString(5, beneficios_cc);
	        comando.setString(6, local_trabalho_cc);
	        comando.execute();
	        comando.close();
	        conn.close();
			} 
			catch (Exception e) {
				System.out.println(e.getMessage());
			}	
	}
	
	public void Alterar() 
	{
		try {
			// conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
        	String Sql = "update vagas set descricao = ?,"
        			+ "req_obrigatorios = ?,"
        			+ "req_desejaveis = ?,"
        			+ "remuneracao = ?,"
        			+ "aberta = ?,"
        			+ "beneficios = ?,"
        			+ "local_trabalho = ? "
        			+ " where idvaga = ?";
        	PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
        	comando.setString(1, descricao_cc);
        	comando.setString(2, req_obrigatorios_cc);
        	comando.setString(3, req_desejaveis_cc);
        	comando.setFloat(4, remuneracao_cc);
        	comando.setInt(5, aberta_cc);
        	comando.setString(6, beneficios_cc);
        	comando.setString(7, local_trabalho_cc);
        	comando.setInt(8, idvaga_cc);
        	comando.execute();
	        comando.close();
	        conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			}
	}
	
	public void Excluir()
	{
		try {
			// conecta com BD
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			String Sql = "delete from vagas where idvaga = " + idvaga_cc;
        	PreparedStatement comando = (PreparedStatement) conn.prepareStatement(Sql);
        	comando.execute();
	        comando.close();
	        conn.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			}
	}


	public int getIdvaga_cc() {
		return idvaga_cc;
	}

	public void setIdvaga_cc(int idvaga_cc) {
		this.idvaga_cc = idvaga_cc;
	}

	public String getDescricao_cc() {
		return descricao_cc;
	}

	public void setDescricao_cc(String descricao_cc) {
		this.descricao_cc = descricao_cc;
	}

	public String getReq_obrigatorios_cc() {
		return req_obrigatorios_cc;
	}

	public void setReq_obrigatorios_cc(String req_obrigatorios_cc) {
		this.req_obrigatorios_cc = req_obrigatorios_cc;
	}

	public String getReq_desejaveis_cc() {
		return req_desejaveis_cc;
	}

	public void setReq_desejaveis_cc(String req_desejaveis_cc) {
		this.req_desejaveis_cc = req_desejaveis_cc;
	}

	public float getRemuneracao_cc() {
		return remuneracao_cc;
	}

	public void setRemuneracao_cc(float remuneracao_cc) {
		this.remuneracao_cc = remuneracao_cc;
	}

	public int getAberta_cc() {
		return aberta_cc;
	}

	public void setAberta_cc(int aberta_cc) {
		this.aberta_cc = aberta_cc;
	}

	public String getBeneficios_cc() {
		return beneficios_cc;
	}

	public void setBeneficios_cc(String beneficios_cc) {
		this.beneficios_cc = beneficios_cc;
	}

	public String getLocal_trabalho_cc() {
		return local_trabalho_cc;
	}

	public void setLocal_trabalho_cc(String local_trabalho_cc) {
		this.local_trabalho_cc = local_trabalho_cc;
	}

}
