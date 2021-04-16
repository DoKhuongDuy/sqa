/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.IncomeTax;
import Model.TaxDetail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TaxDetailDAO extends DAO {

    public TaxDetailDAO() {
        super();
    }

    public TaxDetail searchTaxDetailById(int id) {
        TaxDetail taxDetail = new TaxDetail();
        String sql = "SELECT * from taxdetail where id = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                taxDetail.setName(rs.getString("name"));
                taxDetail.setTaxRate(rs.getFloat("taxRate"));
                IncomeTax tax = new IncomeTax();
                tax.setId(rs.getInt("incomeTaxId"));
                IncomeTaxDAO incomeTaxDAO = new IncomeTaxDAO();
                tax = incomeTaxDAO.searchTaxById(tax.getId());
                taxDetail.setIncomeTax(tax);
            }
        } catch (Exception e) {
        }
        return taxDetail;
    }
}
