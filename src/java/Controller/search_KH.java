package Controller;

import DAO.TaxPayerDAO;
import DAO.TaxReportDAO;
import Model.Reduce;
import Model.TaxPayer;
import Model.TaxReport;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javafx.util.Pair;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hiep Le
 */
@WebServlet(name = "search_KH", urlPatterns = {"/search_KH"})
public class search_KH extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet search_KH</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet search_KH at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession ses = request.getSession();
        String ten = request.getParameter("tenkhachhang");

        ArrayList<TaxPayer> taxPayers = new ArrayList<>();
        TaxPayerDAO taxPayerDAO = new TaxPayerDAO();
        taxPayers = taxPayerDAO.searchTaxPayersByName(ten.trim());

        TaxReportDAO taxReportDAO = new TaxReportDAO();
        ArrayList<TaxReport> taxReports = new ArrayList<>();
        for (TaxPayer taxPayer : taxPayers) {
            ArrayList<TaxReport> personReports = new ArrayList<>();
            personReports = taxReportDAO.getTaxReportsByTaxPayer(taxPayer);
            for (TaxReport report : personReports) {
                taxReports.add(report);
            }
        }

        ArrayList< Pair<TaxReport, Integer>> thuevatien = new ArrayList<>();
        for (TaxReport taxReport : taxReports) {
            float thue = taxReport.getIncome();
            for (Reduce j : taxReport.getListReduce()) {
                float mucgiamtru = j.getReduceValue();
                thue = (float) (thue - mucgiamtru);
            }
            thue = (float) (thue * (taxReport.getTaxDetail().getTaxRate() / 100));
            if (thue < 0) {
                thue = 0;
            }
            thuevatien.add(new Pair(taxReport, (int) thue));
        }
        ses.setAttribute("dsNguoinopthue", thuevatien);
        RequestDispatcher dis = request.getRequestDispatcher("/View/siteadmin2.jsp");
        dis.forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
