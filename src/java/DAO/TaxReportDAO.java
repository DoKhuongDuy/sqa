/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Reduce;
import Model.TaxDetail;
import Model.TaxPayer;
import Model.TaxReport;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TaxReportDAO extends DAO {

    public TaxReportDAO() {
        super();
    }

    public ArrayList<TaxReport> getAllTaxReports() {
        ArrayList<TaxReport> taxReports = new ArrayList<>();
        String sql = "SELECT * from Baocaothue";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaxReport taxReport = new TaxReport();
                taxReport.setId(rs.getInt("id"));
                taxReport.setTaxType(rs.getString("taxtype"));
                taxReport.setDate(rs.getDate("date"));
                taxReport.setIncome(rs.getFloat("income"));
                taxReport.setStatus(rs.getString("status"));

                TaxPayer taxPayer = new TaxPayer();
                TaxPayerDAO taxPayerDAO = new TaxPayerDAO();
                taxPayer = taxPayerDAO.searchTaxPayerById(rs.getInt(("taxpayerid")));
                taxReport.setTaxPayer(taxPayer);

                TaxDetail taxDetail = new TaxDetail();
                taxDetail.setId(rs.getInt("taxdetailId"));
                TaxDetailDAO taxDetailDAO = new TaxDetailDAO();
                taxDetail = taxDetailDAO.searchTaxDetailById(taxDetail.getId());
                taxReport.setTaxDetail(taxDetail);

                ArrayList<Reduce> reduces = new ArrayList<>();
                ReduceDAO reduceDAO = new ReduceDAO();
                reduces = reduceDAO.getReduces(taxReport.getId());
                taxReport.setListReduce(reduces);
                taxReports.add(taxReport);
            }
        } catch (Exception e) {
        }
        return taxReports;
    }

    public ArrayList<TaxReport> getTaxReportsByTaxPayer(TaxPayer taxPayer) {
        ArrayList<TaxReport> taxReports = new ArrayList<>();
        String sql = "SELECT * from taxreport where taxpayerId = ?";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, taxPayer.getId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TaxReport taxReport = new TaxReport();
                taxReport.setId(rs.getInt("id"));
                taxReport.setTaxType(rs.getString("taxtype"));
                taxReport.setDate(rs.getDate("date"));
                taxReport.setIncome(rs.getFloat("income"));
                taxReport.setStatus(rs.getString("status"));;
                taxReport.setTaxPayer(taxPayer);

                TaxDetail taxDetail = new TaxDetail();
                taxDetail.setId(rs.getInt("taxdetailId"));
                TaxDetailDAO taxDetailDAO = new TaxDetailDAO();
                taxDetail = taxDetailDAO.searchTaxDetailById(taxDetail.getId());
                taxReport.setTaxDetail(taxDetail);

                ArrayList<Reduce> reduces = new ArrayList<>();
                ReduceDAO reduceDAO = new ReduceDAO();
                reduces = reduceDAO.getReduces(taxReport.getId());
                taxReport.setListReduce(reduces);
                taxReports.add(taxReport);
            }
        } catch (Exception e) {
        }
        return taxReports;
    }
}
