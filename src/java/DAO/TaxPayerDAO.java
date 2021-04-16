/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.TaxPayer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TaxPayerDAO extends DAO {

    public TaxPayerDAO() {
        super();
    }

    public TaxPayer searchTaxPayerById(int id) {
        TaxPayer taxPayer = new TaxPayer();
        String sql = "SELECT * from taxpayer where id = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                taxPayer.setName(rs.getString("name"));
                taxPayer.setPhoneNumber(rs.getString("phoneNumber"));
                taxPayer.setAddress(rs.getString("address"));
                taxPayer.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
        }
        return taxPayer;
    }

    public ArrayList<TaxPayer> searchTaxPayersByName(String name) {
        ArrayList<TaxPayer> listTaxpayer = new ArrayList<>();
        String sql = "SELECT * FROM taxpayer where ten like %?% ";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaxPayer taxPayer = new TaxPayer();
                taxPayer.setId(rs.getInt("id"));
                taxPayer.setName(rs.getString("name"));
                taxPayer.setPhoneNumber(rs.getString("phoneNumber"));
                taxPayer.setAddress(rs.getString("address"));
                taxPayer.setEmail(rs.getString("email"));
                listTaxpayer.add(taxPayer);
            }
        } catch (Exception e) {
        }
        return listTaxpayer;
    }
}
