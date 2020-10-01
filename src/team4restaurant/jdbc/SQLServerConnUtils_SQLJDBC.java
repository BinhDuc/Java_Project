package team4restaurant.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class SQLServerConnUtils_SQLJDBC {
	
	
    public static Connection getSQLServerConnection_SQLJDBC() //
            throws ClassNotFoundException, SQLException {
 
        
        String hostName = "localhost";
        String sqlInstanceName = "DESKTOP-NA6671E";
        String database = "test";
        String userName = "sa";
        String password = "123456";
 
        return getSQLServerConnection_SQLJDBC(hostName, sqlInstanceName, database, userName, password);
    }
 
   
    private static Connection getSQLServerConnection_SQLJDBC(String hostName, //
            String sqlInstanceName, String database, String userName, String password)//
            throws ClassNotFoundException, SQLException {
 
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
 
        
       
        String connectionURL = "jdbc:sqlserver://" + hostName + ":1433" //
                + ";instance=" + sqlInstanceName + ";databaseName=" + database;
 
        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
    }
    

}
