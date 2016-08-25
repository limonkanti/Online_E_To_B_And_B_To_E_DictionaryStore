package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SearchWord_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SEARCH WORD</title>\n");
      out.write("           <script>\n");
      out.write("        var request;\n");
      out.write("        function sendInfo()\n");
      out.write("        {\n");
      out.write("            var v = document.myform.t1.value;\n");
      out.write("            var url = \"ProcessWord.jsp?val=\" + v;\n");
      out.write("            if (window.XMLHttpRequest)\n");
      out.write("            {\n");
      out.write("                request = new XMLHttpRequest();\n");
      out.write("            }\n");
      out.write("            else if (window.ActiveXObject)\n");
      out.write("            {\n");
      out.write("                request = new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            try\n");
      out.write("            {\n");
      out.write("                request.onreadystatechange = getInfo;\n");
      out.write("                request.open(\"GET\", url, true);\n");
      out.write("                request.send();\n");
      out.write("            }\n");
      out.write("            catch (e)\n");
      out.write("            {\n");
      out.write("                alert(\"Unable to connect to server\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        function getInfo()\n");
      out.write("        {\n");
      out.write("            if (request.readyState === 4)\n");
      out.write("            {\n");
      out.write("                var val = request.responseText;\n");
      out.write("                document.getElementById('a').innerHTML = val;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <marquee><h3>WELCOME TO YOU ONLINE DICTIONARY WORLD!!!</h3></marquee>\n");
      out.write("    \n");
      out.write("    <form name=\"myform\">  \n");
      out.write("        English to Bengali : <input type=\"text\" name=\"t1\"> \n");
      out.write("        <input type=\"button\" value=\"SEARCH\" onClick=\"sendInfo()\">\n");
      out.write("        \n");
      out.write("        Bengali to English : <input type=\"text\" name=\"t1\"> \n");
      out.write("        <input type=\"button\" value=\"SEARCH\" onClick=\"sendInfo()\">\n");
      out.write("    </form>  \n");
      out.write("    <span id=\"a\"></span>\n");
      out.write("\n");
      out.write("</body>\n");
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
