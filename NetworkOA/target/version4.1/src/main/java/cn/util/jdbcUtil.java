package cn.util;



import java.sql.*;

/**
 * Created by Administrator on 2017/4/10.
 */
public class jdbcUtil {
    /**
     * 1.连接数据库Mysql 2.关闭closeAll
     *
     */
   private static String url;
   private static String user;
   private static String password;
   private static String driver;

   //stataic
    static{
       url = "jdbc:mysql://localhost:3306/friends";
       user = "root";
       password = "1996";
       driver = "com.mysql.jdbc.Driver";

        //add Driver
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    //return Connection
    public static Connection getConnection(){
        Connection con=null;

        try {
           con=  DriverManager.getConnection(url,user,password);
        }catch(SQLException e){
            e.printStackTrace();
        }
        return con;
    }

    //closerAll
    public static void closeAll(Connection con, Statement sta, ResultSet res){

        try {
            if (res!=null){
                res.close();
                res=null;
            }
            if(sta!=null){
                sta.close();
                sta=null;
            }
            if (con!=null){
                con.close();
                con=null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
