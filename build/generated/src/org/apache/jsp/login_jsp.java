package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>::Efikacia:.</title>\r\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" href=\"views/favicon.png\">\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("      @import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);\r\n");
      out.write("      @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);\r\n");
      out.write("\r\n");
      out.write("      body, html {\r\n");
      out.write("        height: 100%;\r\n");
      out.write("      }\r\n");
      out.write("      body {\r\n");
      out.write("        font-family: 'Open Sans';\r\n");
      out.write("        font-weight: 100;\r\n");
      out.write("        display: flex;\r\n");
      out.write("        overflow: hidden;\r\n");
      out.write("      }\r\n");
      out.write("      input {\r\n");
      out.write("        -webkit-input-placeholder {\r\n");
      out.write("           color: rgba(255,255,255,0.7);\r\n");
      out.write("        }\r\n");
      out.write("        -moz-placeholder {\r\n");
      out.write("           color: rgba(255,255,255,0.7);  \r\n");
      out.write("        }\r\n");
      out.write("        -ms-input-placeholder {  \r\n");
      out.write("           color: rgba(255,255,255,0.7);  \r\n");
      out.write("        }\r\n");
      out.write("        &:focus {\r\n");
      out.write("          outline: 0 transparent solid;\r\n");
      out.write("          -webkit-input-placeholder {\r\n");
      out.write("           color: rgba(0,0,0,0.7);\r\n");
      out.write("          }\r\n");
      out.write("          -moz-placeholder {\r\n");
      out.write("             color: rgba(0,0,0,0.7);  \r\n");
      out.write("          }\r\n");
      out.write("          -ms-input-placeholder {  \r\n");
      out.write("             color: rgba(0,0,0,0.7);  \r\n");
      out.write("          }\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .login-form {\r\n");
      out.write("        background: #111;\r\n");
      out.write("        box-shadow: 0 0 1rem rgba(0,0,0,0.3);\r\n");
      out.write("        min-height: 10rem;\r\n");
      out.write("        margin: auto;\r\n");
      out.write("        max-width: 50%;\r\n");
      out.write("        padding: .5rem;\r\n");
      out.write("        border-radius: 20px;\r\n");
      out.write("      }\r\n");
      out.write("      .login-text {\r\n");
      out.write("        \r\n");
      out.write("        color: white;\r\n");
      out.write("        font-size: 1.5rem;\r\n");
      out.write("        margin: 0 auto;\r\n");
      out.write("        max-width: 50%;\r\n");
      out.write("        padding: .5rem;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("      }\r\n");
      out.write("      .fa-stack-1x {\r\n");
      out.write("          color: black;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("      .login-username, .login-password {\r\n");
      out.write("        background: transparent;\r\n");
      out.write("        border: 0 solid;\r\n");
      out.write("        border-bottom: 1px solid rgba(white, .5);\r\n");
      out.write("        color: white;\r\n");
      out.write("        display: block;\r\n");
      out.write("        margin: 1rem;\r\n");
      out.write("        padding: .5rem;\r\n");
      out.write("        transition: 250ms background ease-in;\r\n");
      out.write("        width: calc(100% - 3rem);\r\n");
      out.write("        &:focus {\r\n");
      out.write("          background: white;\r\n");
      out.write("          color: black;\r\n");
      out.write("          transition: 250ms background ease-in;\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .login-forgot-pass {\r\n");
      out.write("        \r\n");
      out.write("        bottom: 0;\r\n");
      out.write("        color: white;\r\n");
      out.write("        cursor: pointer;\r\n");
      out.write("        display: block;\r\n");
      out.write("        font-size: 75%;\r\n");
      out.write("        left: 0;\r\n");
      out.write("        opacity: 0.6;\r\n");
      out.write("        padding: .5rem;\r\n");
      out.write("        position: absolute;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        \r\n");
      out.write("        width: 100%;\r\n");
      out.write("        &:hover {\r\n");
      out.write("          opacity: 1;\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("      .login-submit {\r\n");
      out.write("        border: 1px solid white;\r\n");
      out.write("        background: transparent;\r\n");
      out.write("        color: white;\r\n");
      out.write("        display: block;\r\n");
      out.write("        margin: 1rem auto;\r\n");
      out.write("        min-width: 1px;\r\n");
      out.write("        padding: .25rem;\r\n");
      out.write("        transition: 250ms background ease-in;\r\n");
      out.write("        &:hover, &:focus {\r\n");
      out.write("          background: white;\r\n");
      out.write("          color: black;\r\n");
      out.write("          transition: 250ms background ease-in;\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      [class*=underlay] {\r\n");
      out.write("        left: 0;\r\n");
      out.write("        min-height: 100%;\r\n");
      out.write("        min-width: 100%;\r\n");
      out.write("        position: fixed;\r\n");
      out.write("        top: 0;\r\n");
      out.write("      }\r\n");
      out.write("      .underlay-photo {\r\n");
      out.write("        animation: hue-rotate 6s infinite;\r\n");
      out.write("        background: url('assets/images/fondo.jpg');\r\n");
      out.write("        background-size: cover;\r\n");
      out.write("        -webkit-filter: grayscale(30%);\r\n");
      out.write("        z-index: -1;\r\n");
      out.write("      }\r\n");
      out.write("      .underlay-black {\r\n");
      out.write("        background: rgba(0,0,0,0.7);\r\n");
      out.write("        z-index: -1;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      @keyframes hue-rotate {\r\n");
      out.write("        from {\r\n");
      out.write("          -webkit-filter: grayscale(30%) hue-rotate(0deg);\r\n");
      out.write("        }\r\n");
      out.write("        to {\r\n");
      out.write("          -webkit-filter: grayscale(30%) hue-rotate(360deg);\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("    </style>\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/images/favicon.ico\" />\r\n");
      out.write("    <script type='text/javascript'>\r\n");
      out.write("      santyLibBgAleat=function(){\r\n");
      out.write("        this.v=\"1.0\";\r\n");
      out.write("        this.imagenes=function(){\r\n");
      out.write("          var x=arguments,img=this.a(x);\r\n");
      out.write("          this.s(img)};\r\n");
      out.write("          this.a=function(r){\r\n");
      out.write("            var a=Math.random()*r.length;\r\n");
      out.write("            a=Math.floor(a);\r\n");
      out.write("            return(r[a])\r\n");
      out.write("          };\r\n");
      out.write("          this.c=function(b){\r\n");
      out.write("            head=document.getElementsByTagName(\"head\")[0];\r\n");
      out.write("            if(!head)\r\n");
      out.write("              return;\r\n");
      out.write("            var s=document.createElement(\"style\");\r\n");
      out.write("            s.type='text/css';\r\n");
      out.write("            s.innerHTML=b;\r\n");
      out.write("            head.appendChild(s)};\r\n");
      out.write("            this.s=function(b){\r\n");
      out.write("              var o=undefined;\r\n");
      out.write("              b.css=(b.css!==o)?b.css:\"\";\r\n");
      out.write("              b.url=(b.url!==o)?b.url:\"\";\r\n");
      out.write("              this.c(\"body{background:url('\"+b.url+\"') \"+b.css+\"}\")\r\n");
      out.write("            }\r\n");
      out.write("          };\r\n");
      out.write("          $santyBA=new santyLibBgAleat();\r\n");
      out.write("          $santyBA.imagenes(\r\n");
      out.write("            {url:\"assets/images/01.jpg\"},\r\n");
      out.write("            {url:\"assets/images/02.jpg\"},\r\n");
      out.write("            {url:\"assets/images/03.jpg\"},\r\n");
      out.write("            {url:\"assets/images/04.jpg\"},\r\n");
      out.write("            {url:\"assets/images/05.jpg\"}\r\n");
      out.write("    );\r\n");
      out.write("    </script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <form class=\"login-form\" method=\"POST\" action=\"\">\r\n");
      out.write("      <p class=\"login-text\">\r\n");
      out.write("        <span class=\"fa-stack fa-lg\">\r\n");
      out.write("          <i class=\"fa fa-circle fa-stack-2x\"></i>\r\n");
      out.write("          <i class=\"fa fa-lock fa-stack-1x\"></i>\r\n");
      out.write("        </span>\r\n");
      out.write("      </p>\r\n");
      out.write("      <input type=\"text\" name=\"usuario\" class=\"login-username\" autofocus=\"true\" required=\"true\" placeholder=\"Usuario\" />\r\n");
      out.write("      <input type=\"password\" name=\"clave\" class=\"login-password\" required=\"true\" placeholder=\"ContraseÃ±a\" />\r\n");
      out.write("      <input type=\"submit\" name=\"Login\" value=\"Entrar\" class=\"login-submit\" />\r\n");
      out.write("    </form>\r\n");
      out.write("  <a href=\"#\" class=\"login-forgot-pass\">Â¿Olvidaste tu contraseÃ±a?</a>\r\n");
      out.write("  <!--<div class=\"underlay-photo\"></div>-->\r\n");
      out.write("  <div class=\"underlay-black\"></div> \r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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
