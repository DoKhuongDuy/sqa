package Controller;

import DAO.TaxReportDAO;
import Model.Reduce;
import Model.TaxReport;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javafx.util.Pair;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "show_Danhsach", urlPatterns = {"/showDanhsach"})
public class show_Danhsach extends HttpServlet {

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
            out.println("<title>Servlet show_Danhsach</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet show_Danhsach at " + request.getContextPath() + "</h1>");
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
        HttpSession ses = request.getSession();
        TaxReportDAO taxReportDAO = new TaxReportDAO();
        ArrayList<TaxReport> taxReports = new ArrayList<>();
        taxReports = taxReportDAO.getAllTaxReports();
        
        ArrayList< Pair<TaxReport,Integer> > thuevatien = new ArrayList< Pair<TaxReport,Integer> > ();
        for(TaxReport taxReport : taxReports)
        {
            float thue = taxReport.getIncome();           
            for(Reduce reduce : taxReport.getListReduce())
            {
                float mucgiamtru = reduce.getReduceValue();
               thue = (float)(thue - mucgiamtru);
            }
            thue = (float)(thue*(taxReport.getTaxDetail().getTaxRate()/100));
            if(thue<0)
            {
                thue = 0;
            }
            thuevatien.add(new Pair(taxReport,(int)thue));
        }        
        ses.setAttribute("dsThue", thuevatien); 
        RequestDispatcher dis = request.getRequestDispatcher("/View/siteadmin3.jsp");
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
        RequestDispatcher dis = request.getRequestDispatcher("/View/siteadmin3.jsp");
        dis.forward(request, response);
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
