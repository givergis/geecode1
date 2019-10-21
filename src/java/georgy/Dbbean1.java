package georgy;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbbean1 {
	public Connection dbcon;
	public boolean connect() throws ClassNotFoundException, SQLException{
	Class.forName("com.mysql.jdbc.Driver");
	dbcon=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-rescue","root","");
	return true;
	}
public void close() throws SQLException{
dbcon.close();
}
public ResultSet execsql(String sql) throws SQLException{
Statement s=dbcon.createStatement();
ResultSet r=s.executeQuery(sql);
return(r==null)?null:r;
}
public int updatesql(String sql) throws SQLException{
Statement s=dbcon.createStatement();
int r=s.executeUpdate(sql);
return(r==0)?0:r;
}
}
