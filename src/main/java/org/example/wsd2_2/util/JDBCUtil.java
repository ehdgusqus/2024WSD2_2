package org.example.wsd2_2.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class JDBCUtil {
    public static Connection getConnection() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mariadb://walab.handong.edu:3306/OSS24_22200356",
                    "OSS24_22200356",
                    "iiSh0ahh"
            );
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Database connection error: " + e.getMessage(), e);
        }
    }


    /*
    public static void main(String a[]){
        Connection conn = org.example.wsd2_2.util.JDBCUtil.getConnection();
        if(conn != null) {
            System.out.println("DB연결 완료");
        }
    }
    */
}