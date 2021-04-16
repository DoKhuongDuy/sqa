package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/CSS/login.css");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tax Report</title>\n");
      out.write("        <style>\n");
      out.write("            ");
      out.write("@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);\n");
      out.write("@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);\n");
      out.write("\n");
      out.write("body{\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  background: #fff;\n");
      out.write("\n");
      out.write("  color: #fff;\n");
      out.write("  font-family: Arial;\n");
      out.write("  font-size: 12px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".body{\n");
      out.write("  position: absolute;\n");
      out.write("  top: -20px;\n");
      out.write("  left: -20px;\n");
      out.write("  right: -40px;\n");
      out.write("  bottom: -40px;\n");
      out.write("  width: auto;\n");
      out.write("  height: auto;\n");
      out.write("  background-image: url(\"img/background.jpg\");\n");
      out.write("  background-size: cover;\n");
      out.write("  -webkit-filter: blur(5px);\n");
      out.write("  z-index: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".grad{\n");
      out.write("  position: absolute;\n");
      out.write("  top: -20px;\n");
      out.write("  left: -20px;\n");
      out.write("  right: -40px;\n");
      out.write("  bottom: -40px;\n");
      out.write("  width: auto;\n");
      out.write("  height: auto;\n");
      out.write("  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */\n");
      out.write("  z-index: 1;\n");
      out.write("  opacity: 0.7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header{\n");
      out.write("  position: absolute;\n");
      out.write("  top: calc(50% - 35px);\n");
      out.write("  left: calc(50% - 255px);\n");
      out.write("  z-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div{\n");
      out.write("  float: left;\n");
      out.write("  color: #0000ff;\n");
      out.write("  font-family: 'Exo', sans-serif;\n");
      out.write("  font-size: 35px;\n");
      out.write("  font-weight: 1111;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div span{\n");
      out.write("  color: #5379fa !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login{\n");
      out.write("  position: absolute;\n");
      out.write("  top: calc(50% - 75px);\n");
      out.write("  left: calc(50% - 50px);\n");
      out.write("  height: 150px;\n");
      out.write("  width: 350px;\n");
      out.write("  padding: 10px;\n");
      out.write("  z-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]{\n");
      out.write("  width: 250px;\n");
      out.write("  height: 30px;\n");
      out.write("  background: transparent;\n");
      out.write("  border: 1px solid rgba(255,255,255,1.2);\n");
      out.write("  border-radius: 12px;\n");
      out.write("  color: #fff;\n");
      out.write("  font-family: 'Exo', sans-serif;\n");
      out.write("  font-size: 16px;\n");
      out.write("  font-weight: 400;\n");
      out.write("  padding: 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]{\n");
      out.write("  width: 250px;\n");
      out.write("  height: 30px;\n");
      out.write("  background: transparent;\n");
      out.write("  border: 1px solid rgba(255,255,255,1.2);\n");
      out.write("  border-radius: 12px;\n");
      out.write("  color: #fff;\n");
      out.write("  font-family: 'Exo', sans-serif;\n");
      out.write("  font-size: 16px;\n");
      out.write("  font-weight: 400;\n");
      out.write("  padding: 4px;\n");
      out.write("  margin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]{\n");
      out.write("  width: 260px;\n");
      out.write("  height: 35px;\n");
      out.write("  background: #6666ff;\n");
      out.write("  border: 1px solid #fff;\n");
      out.write("  cursor: pointer;\n");
      out.write("  border-radius: 12px;\n");
      out.write("  color: #0000ff;\n");
      out.write("  font-family: 'Exo', sans-serif;\n");
      out.write("  font-size: 18px;\n");
      out.write("  font-weight: 400;\n");
      out.write("  padding: 6px;\n");
      out.write("  margin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:hover{\n");
      out.write("  opacity: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:active{\n");
      out.write("  opacity: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]:focus{\n");
      out.write("  outline: none;\n");
      out.write("  border: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]:focus{\n");
      out.write("  outline: none;\n");
      out.write("  border: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:focus{\n");
      out.write("  outline: yellow;\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-webkit-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-moz-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"body\"></div>\n");
      out.write("        <div class=\"grad\"></div>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div>TAX REPORT<span><span> </span></span></div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <form id=\"form1\" action=\"loginController\" method=\"post\">\n");
      out.write("                <input type=\"text\" placeholder=\"username\" name=\"txtU\"><br>\n");
      out.write("                <input type=\"password\" placeholder=\"password\" name=\"txtP\"><br>\n");
      out.write("                <input type=\"button\" value=\"Log In\" onclick=\"this.parentElement.submit()\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
