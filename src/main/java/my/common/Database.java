/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.common;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ADMIN
 */
public class Database {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //2. Thiết lập kết nối CSDL
            conn = DriverManager.getConnection("jdbc:sqlserver://pc339;databaseName=qlts", "sa", "sa");
        } catch (Exception e) {
            System.out.println("Loi: " + e.toString());
        }
        return conn;
    }

}
