/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-01-10 11:29:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.yash.entity.User;
import com.yash.entity.ItemDetails;
import java.util.List;
import com.yash.db.DBConnect;
import com.yash.dao.ItemDAOImpl;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/component/carousel.jsp", Long.valueOf(1736354431385L));
    _jspx_dependants.put("/component/cssfile.jsp", Long.valueOf(1736251690057L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1734951957503L));
    _jspx_dependants.put("jar:file:/C:/Users/Utkarsh/.m2/repository/javax/servlet/jstl/1.2/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153365282000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(7);
    _jspx_imports_classes.add("com.yash.entity.ItemDetails");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.yash.dao.ItemDAOImpl");
    _jspx_imports_classes.add("com.yash.db.DBConnect");
    _jspx_imports_classes.add("com.yash.entity.User");
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>User Home</title>\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\"\r\n");
      out.write("	rel=\"stylesheet\"\r\n");
      out.write("	integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\"\r\n");
      out.write("	crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css\"\r\n");
      out.write("	integrity=\"sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==\"\r\n");
      out.write("	crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("		integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("/* General Styles */\r\n");
      out.write("body {\r\n");
      out.write("   font-family: 'Arial', sans-serif;\r\n");
      out.write("   background-color: #f9f9f9;\r\n");
      out.write("   color: #333;\r\n");
      out.write("   margin: 0;\r\n");
      out.write("   padding: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1, h5, p {\r\n");
      out.write("   font-family: 'Arial', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Navbar Styles */\r\n");
      out.write(".navbar {\r\n");
      out.write("   background-color: #4a4e69;\r\n");
      out.write("   color: #fff;\r\n");
      out.write("   padding: 15px 30px;\r\n");
      out.write("   display: flex;\r\n");
      out.write("   align-items: center;\r\n");
      out.write("   justify-content: space-between;\r\n");
      out.write("   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".username {\r\n");
      out.write("   font-size: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cart-icon {\r\n");
      out.write("   font-size: 28px;\r\n");
      out.write("   color: white;\r\n");
      out.write("   margin-right: 20px;\r\n");
      out.write("   transition: transform 0.3s ease;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cart-icon:hover {\r\n");
      out.write("   transform: scale(1.1);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".logout-button {\r\n");
      out.write("   background-color: #f44336;\r\n");
      out.write("   color: white;\r\n");
      out.write("   border: none;\r\n");
      out.write("   padding: 12px 18px;\r\n");
      out.write("   cursor: pointer;\r\n");
      out.write("   border-radius: 5px;\r\n");
      out.write("   transition: background-color 0.3s ease;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".logout-button:hover {\r\n");
      out.write("   background-color: #d32f2f;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Product Section */\r\n");
      out.write(".product-section {\r\n");
      out.write("   display: flex;\r\n");
      out.write("   align-items: center;\r\n");
      out.write("   background: #fff;\r\n");
      out.write("   border-radius: 10px;\r\n");
      out.write("   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\r\n");
      out.write("   margin-bottom: 30px;\r\n");
      out.write("   padding: 20px;\r\n");
      out.write("   transition: transform 0.3s ease, box-shadow 0.3s ease;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-section:hover {\r\n");
      out.write("   transform: translateY(-10px);\r\n");
      out.write("   box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-image-container {\r\n");
      out.write("   flex: 1;\r\n");
      out.write("   max-width: 250px;\r\n");
      out.write("   margin-right: 20px;\r\n");
      out.write("   overflow: hidden;\r\n");
      out.write("   border-radius: 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-image {\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   height: auto;\r\n");
      out.write("   object-fit: cover;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-info {\r\n");
      out.write("   flex-grow: 1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-info h5 {\r\n");
      out.write("   font-size: 22px;\r\n");
      out.write("   color: #4a4e69;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-info p {\r\n");
      out.write("   color: #777;\r\n");
      out.write("   font-size: 16px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Updated CSS for Shop Now Button */\r\n");
      out.write(".product-info a {\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    margin-top: 10px;\r\n");
      out.write("    padding: 10px 20px;\r\n");
      out.write("    background-color: #007bff;\r\n");
      out.write("    color: white; /* This makes the text color white */\r\n");
      out.write("    border-radius: 5px;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    transition: background-color 0.3s ease;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".product-info a:hover {\r\n");
      out.write("    background-color: #0056b3;\r\n");
      out.write("    color: white; /* Keep text color white on hover */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".text-primary {\r\n");
      out.write("    color: #ffff !important;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".author {\r\n");
      out.write("    margin-top: 15px;\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    font-size: 18px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Responsive Layout */\r\n");
      out.write("@media (max-width: 768px) {\r\n");
      out.write("    .navbar {\r\n");
      out.write("        flex-direction: column;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-section {\r\n");
      out.write("        flex-direction: column;\r\n");
      out.write("        align-items: flex-start;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-image-container {\r\n");
      out.write("        max-width: 100%;\r\n");
      out.write("        margin-bottom: 20px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .product-info a {\r\n");
      out.write("        width: 100%;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

User u = ( User ) session.getAttribute("userobj");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Navbar -->\r\n");
      out.write("<div class=\"navbar\">\r\n");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"carouselExampleIndicators\" class=\"carousel slide\"\r\n");
      out.write("		data-bs-ride=\"carousel\">\r\n");
      out.write("		<div class=\"carousel-indicators\">\r\n");
      out.write("			<button type=\"button\" data-bs-target=\"#carouselExampleIndicators\"\r\n");
      out.write("				data-bs-slide-to=\"0\" class=\"active\" aria-current=\"true\"\r\n");
      out.write("				aria-label=\"Slide 1\"></button>\r\n");
      out.write("			<button type=\"button\" data-bs-target=\"#carouselExampleIndicators\"\r\n");
      out.write("				data-bs-slide-to=\"1\" aria-label=\"Slide 2\"></button>\r\n");
      out.write("			<button type=\"button\" data-bs-target=\"#carouselExampleIndicators\"\r\n");
      out.write("				data-bs-slide-to=\"2\" aria-label=\"Slide 3\"></button>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"carousel-inner\">\r\n");
      out.write("			<div class=\"carousel-item active\">\r\n");
      out.write("				<img src=\"image/home.jpg\" class=\"d-block w-100\" alt=\"...\"  height = \"500px\" >\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"carousel-item\">\r\n");
      out.write("				<img src=\"image/home1.jpg\" class=\"d-block w-100\" alt=\"...\"  height = \"500px\">\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"carousel-item\">\r\n");
      out.write("				<img src=\"image/home2.webp\" class=\"d-block w-100\" alt=\"...\"  height = \"500px\">\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<button class=\"carousel-control-prev\" type=\"button\"\r\n");
      out.write("			data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"prev\">\r\n");
      out.write("			<span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span> <span\r\n");
      out.write("				class=\"visually-hidden\">Previous</span>\r\n");
      out.write("		</button>\r\n");
      out.write("		<button class=\"carousel-control-next\" type=\"button\"\r\n");
      out.write("			data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"next\">\r\n");
      out.write("			<span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span> <span\r\n");
      out.write("				class=\"visually-hidden\">Next</span>\r\n");
      out.write("		</button>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container p-3\">\r\n");
      out.write("<p class=\"text-center fs-2\">Our Collections</p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Product Sections -->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("<!-- Product 1 -->\r\n");
      out.write("<div class=\"product-section\">\r\n");
      out.write("    <div class=\"product-image-container\">\r\n");
      out.write("        <img src=\"image/center_table.png\" class=\"product-image\" alt=\"Center Table\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <h5 class=\"card-title\">Center Table</h5>\r\n");
      out.write("        <p class=\"card-description\">Illuminate your space with our stylish Center Table.</p>\r\n");
      out.write("        <a href=\"center_table.jsp\" class=\"text-decoration-none text-primary\">Shop Now</a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Product 2 -->\r\n");
      out.write("<div class=\"product-section\">\r\n");
      out.write("    <div class=\"product-image-container\">\r\n");
      out.write("        <img src=\"image/photo_frame.webp\" class=\"product-image\" alt=\"Photo Frames\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <h5 class=\"card-title\">Photo Frames</h5>\r\n");
      out.write("        <p class=\"card-description\">Showcase your memories with our elegant photo frames.</p>\r\n");
      out.write("        <a href=\"photoframes.jsp\" class=\"text-decoration-none text-primary\">Shop Now</a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Product 3 -->\r\n");
      out.write("<div class=\"product-section\">\r\n");
      out.write("    <div class=\"product-image-container\">\r\n");
      out.write("        <img src=\"image/sofa_set.jfif\" class=\"product-image\" alt=\"Sofa_set\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"product-info\">\r\n");
      out.write("        <h5 class=\"card-title\">Sofa sets</h5>\r\n");
      out.write("        <p class=\"card-description\">Add a touch of elegance with our beautiful Sofa set.</p>\r\n");
      out.write("        <a href=\"sofa_set.jsp\" class=\"text-decoration-none text-primary\">Shop Now</a>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /home.jsp(180,0) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty userobj}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("    <div class=\"username\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userobj.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
        out.write("</div>\r\n");
        out.write("    <div style=\"flex-grow: 1;\"></div>\r\n");
        out.write("    <!-- This will push the next items to the right -->\r\n");
        out.write("    <a href=\"cart.jsp\" class=\"cart-icon\" title=\"View Cart\"> <i class=\"fas fa-shopping-cart\"></i></a>\r\n");
        out.write("    <form action=\"logout\" method=\"get\">\r\n");
        out.write("        <button type=\"submit\" class=\"logout-button\">Logout</button>\r\n");
        out.write("    </form>\r\n");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }
}
