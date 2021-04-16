/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Reduce;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ReduceDAO extends DAO {

    public ReduceDAO() {
        super();
    }

    public ArrayList<Reduce> getReduces(int taxReportId) {
        ArrayList<Reduce> listReduces = new ArrayList<>();
        String sql = "SELECT * from reduce, taxreport_reduce where taxreport_reduce.taxreportId = ? "
                + "and taxreport_reduce.reduceId = reduce.id";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, taxReportId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Reduce reduce = new Reduce();
                reduce.setName(rs.getString("name"));
                reduce.setReduceValue(rs.getInt("reduceValue"));
                listReduces.add(reduce);
            }
        } catch (Exception e) {
        }
        return listReduces;
    }
}
