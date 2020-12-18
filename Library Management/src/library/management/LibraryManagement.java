package library.management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

abstract class LibraryManagement {
    
private static Connection connection;
    
    static Connection getInstance() throws SQLException, ClassNotFoundException
    {
        if(connection==null)
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/library_management?"+"user=root");
        }
       return connection;
    }
    
}
