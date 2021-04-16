/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.IncomeTax;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IncomeTaxDAO extends DAO {

    public IncomeTaxDAO() {
        super();
    }

    public IncomeTax searchTaxById(int id) {
        IncomeTax tax = new IncomeTax();
        String sql = "SELECT * from incometax where id = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tax.setType(rs.getString("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tax;
    }

    public IncomeTax searchTaxByType(String type) {
        IncomeTax tax = new IncomeTax();
        String sql = "SELECT * from incometax where type = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tax.setType(rs.getString("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tax;
    }
}
