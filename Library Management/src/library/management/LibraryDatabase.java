package library.management;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class LibraryDatabase {
    
    Connection connect = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet result = null;
    
    void databaseOperation()
    {
    try {
    connect = LibraryManagement.getInstance();
    
    statement = connect.createStatement();
    result = statement.executeQuery("SELECT * FROM card_information");
    
    while (result.next())
    {
    System.out.println("id: "+result.getString("id"));
    System.out.println("name: "+result.getString("name"));
    System.out.println("section: "+result.getString("section"));
    System.out.println("book_name: "+result.getString("book_name"));
    
    }
    } catch(ClassNotFoundException | SQLException ex){  
    
    }
    
    }
    
}
