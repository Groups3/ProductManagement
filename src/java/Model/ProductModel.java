/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import bean.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dattr_000
 */
public class ProductModel {

    public List<Product> getData() {
        List<Product> list = new ArrayList<Product>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://TIENDAT;databaseName=ProManagement", "sa", "123456");
            PreparedStatement statement = con.prepareStatement("select * from Product");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                list.add(new Product(resultSet.getInt("id"), resultSet.getString("pro_name")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean createData(Product p) {
        boolean result = false;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://TIENDAT;databaseName=ProManagement", "sa", "123456");
            PreparedStatement statement = con.prepareStatement("INSERT INTO product VALUES(?)");
            statement.setString(1, p.getName());
            ResultSet resultSet = statement.executeQuery();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

    public boolean delete(Product p) {
        boolean result = false;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://TIENDAT;databaseName=ProManagement", "sa", "123456");
            PreparedStatement statement = con.prepareStatement("DELETE FROM Product WHERE id=? ");
            statement.setInt(1, p.getId());
            ResultSet resultSet = statement.executeQuery();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

    public boolean update(Product p) {
        boolean result = false;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://TIENDAT;databaseName=ProManagement", "sa", "123456");
            PreparedStatement statement = con.prepareStatement("UPDATE Product SET pro_name = ? WHERE id=?");
            statement.setString(1, p.getName());
            statement.setInt(1, p.getId());
            ResultSet resultSet = statement.executeQuery();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

}
