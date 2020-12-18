package library.management;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Database {
    
    public static void main(String[] args){
    
        try {
            LibraryManagement.getInstance(); 
        } catch (SQLException | ClassNotFoundException ex) {
           System.out.println("My Error: "+ex);
        }
        
        LibraryDatabase db = new LibraryDatabase();
        db.databaseOperation();
        
    }
    
}
