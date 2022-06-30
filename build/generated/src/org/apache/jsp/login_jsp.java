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
      out.write("        <title>::AwkiCare:.</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"views/favicon.png\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("          @import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);\n");
      out.write("          @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);\n");
      out.write("\n");
      out.write("          body, html {\n");
      out.write("            height: 100%;\n");
      out.write("          }\n");
      out.write("          body {\n");
      out.write("            font-family: 'Open Sans';\n");
      out.write("            font-weight: 100;\n");
      out.write("            display: flex;\n");
      out.write("            overflow: hidden;\n");
      out.write("          }\n");
      out.write("          input {\n");
      out.write("            -webkit-input-placeholder {\n");
      out.write("               color: rgba(255,255,255,0.7);\n");
      out.write("            }\n");
      out.write("            -moz-placeholder {\n");
      out.write("               color: rgba(255,255,255,0.7);  \n");
      out.write("            }\n");
      out.write("            -ms-input-placeholder {  \n");
      out.write("               color: rgba(255,255,255,0.7);  \n");
      out.write("            }\n");
      out.write("            &:focus {\n");
      out.write("              outline: 0 transparent solid;\n");
      out.write("              -webkit-input-placeholder {\n");
      out.write("               color: rgba(0,0,0,0.7);\n");
      out.write("              }\n");
      out.write("              -moz-placeholder {\n");
      out.write("                 color: rgba(0,0,0,0.7);  \n");
      out.write("              }\n");
      out.write("              -ms-input-placeholder {  \n");
      out.write("                 color: rgba(0,0,0,0.7);  \n");
      out.write("              }\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("\n");
      out.write("          .login-form {\n");
      out.write("            background: #111;\n");
      out.write("            box-shadow: 0 0 1rem rgba(0,0,0,0.3);\n");
      out.write("            min-height: 10rem;\n");
      out.write("            margin: auto;\n");
      out.write("            max-width: 50%;\n");
      out.write("            padding: .5rem;\n");
      out.write("            border-radius: 20px;\n");
      out.write("          }\n");
      out.write("          .login-text {\n");
      out.write("\n");
      out.write("\n");
      out.write("            color: white;\n");
      out.write("            font-size: 1.5rem;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            max-width: 50%;\n");
      out.write("            padding: .5rem;\n");
      out.write("            text-align: center;\n");
      out.write("\n");
      out.write("\n");
      out.write("          }\n");
      out.write("          .fa-stack-1x {\n");
      out.write("              color: black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("          .login-username, .login-password {\n");
      out.write("            background: transparent;\n");
      out.write("            border: 0 solid;\n");
      out.write("            border-bottom: 1px solid rgba(white, .5);\n");
      out.write("            color: white;\n");
      out.write("            display: block;\n");
      out.write("            margin: 1rem;\n");
      out.write("            padding: .5rem;\n");
      out.write("            transition: 250ms background ease-in;\n");
      out.write("            width: calc(100% - 3rem);\n");
      out.write("            &:focus {\n");
      out.write("              background: white;\n");
      out.write("              color: black;\n");
      out.write("              transition: 250ms background ease-in;\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("\n");
      out.write("          .login-forgot-pass {\n");
      out.write("\n");
      out.write("            bottom: 0;\n");
      out.write("            color: white;\n");
      out.write("            cursor: pointer;\n");
      out.write("            display: block;\n");
      out.write("            font-size: 75%;\n");
      out.write("            left: 0;\n");
      out.write("            opacity: 0.6;\n");
      out.write("            padding: .5rem;\n");
      out.write("            position: absolute;\n");
      out.write("            text-align: center;\n");
      out.write("\n");
      out.write("            width: 100%;\n");
      out.write("            &:hover {\n");
      out.write("              opacity: 1;\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("          .login-submit {\n");
      out.write("            border: 1px solid white;\n");
      out.write("            background: transparent;\n");
      out.write("            color: white;\n");
      out.write("            display: block;\n");
      out.write("            margin: 1rem auto;\n");
      out.write("            min-width: 1px;\n");
      out.write("            padding: .25rem;\n");
      out.write("            transition: 250ms background ease-in;\n");
      out.write("            &:hover, &:focus {\n");
      out.write("              background: white;\n");
      out.write("              color: black;\n");
      out.write("              transition: 250ms background ease-in;\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("\n");
      out.write("          [class*=underlay] {\n");
      out.write("            left: 0;\n");
      out.write("            min-height: 100%;\n");
      out.write("            min-width: 100%;\n");
      out.write("            position: fixed;\n");
      out.write("            top: 0;\n");
      out.write("          }\n");
      out.write("          .underlay-photo {\n");
      out.write("            animation: hue-rotate 6s infinite;\n");
      out.write("            background: url('public/images/fondo.jpg');\n");
      out.write("            background-size: cover;\n");
      out.write("            -webkit-filter: grayscale(30%);\n");
      out.write("            z-index: -1;\n");
      out.write("          }\n");
      out.write("          .underlay-black {\n");
      out.write("            background: rgba(0,0,0,0.5);\n");
      out.write("            z-index: -1;\n");
      out.write("          }\n");
      out.write("\n");
      out.write("          @keyframes hue-rotate {\n");
      out.write("            from {\n");
      out.write("              -webkit-filter: grayscale(30%) hue-rotate(0deg);\n");
      out.write("            }\n");
      out.write("            to {\n");
      out.write("              -webkit-filter: grayscale(30%) hue-rotate(360deg);\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("        </style>\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"public/images/favicon.ico\" />\n");
      out.write("        <script type='text/javascript'>\n");
      out.write("          santyLibBgAleat=function(){\n");
      out.write("            this.v=\"1.0\";\n");
      out.write("            this.imagenes=function(){\n");
      out.write("              var x=arguments,img=this.a(x);\n");
      out.write("              this.s(img)};\n");
      out.write("              this.a=function(r){\n");
      out.write("                var a=Math.random()*r.length;\n");
      out.write("                a=Math.floor(a);\n");
      out.write("                return(r[a])\n");
      out.write("              };\n");
      out.write("              this.c=function(b){\n");
      out.write("                head=document.getElementsByTagName(\"head\")[0];\n");
      out.write("                if(!head)\n");
      out.write("                  return;\n");
      out.write("                var s=document.createElement(\"style\");\n");
      out.write("                s.type='text/css';\n");
      out.write("                s.innerHTML=b;\n");
      out.write("                head.appendChild(s)};\n");
      out.write("                this.s=function(b){\n");
      out.write("                  var o=undefined;\n");
      out.write("                  b.css=(b.css!==o)?b.css:\"\";\n");
      out.write("                  b.url=(b.url!==o)?b.url:\"\";\n");
      out.write("                  this.c(\"body{background:url('\"+b.url+\"') \"+b.css+\"}\")\n");
      out.write("                }\n");
      out.write("              };\n");
      out.write("              $santyBA=new santyLibBgAleat();\n");
      out.write("              $santyBA.imagenes(\n");
      out.write("                {url:\"public/images/01.jpg\"},\n");
      out.write("                {url:\"public/images/02.jpg\"},\n");
      out.write("                {url:\"public/images/03.jpg\"},\n");
      out.write("                {url:\"public/images/04.jpg\"},\n");
      out.write("                {url:\"public/images/05.jpg\"}\n");
      out.write("        );\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form class=\"login-form\" method=\"POST\" action=\"mantenimiento.jsp\">\n");
      out.write("          <p class=\"login-text\">\n");
      out.write("            <span class=\"fa-stack fa-lg\">\n");
      out.write("              <i class=\"fa fa-circle fa-stack-2x\"></i>\n");
      out.write("              <i class=\"fa fa-lock fa-stack-1x\"></i>\n");
      out.write("            </span>\n");
      out.write("          </p>\n");
      out.write("          <input type=\"text\" name=\"usuario\" class=\"login-username\" autofocus=\"true\" required=\"true\" placeholder=\"Usuario\" />\n");
      out.write("          <input type=\"password\" name=\"clave\" class=\"login-password\" required=\"true\" placeholder=\"Contraseña\" />\n");
      out.write("          <input type=\"submit\" name=\"Login\" value=\"Entrar\" class=\"login-submit\" />\n");
      out.write("        </form>\n");
      out.write("        <a href=\"#\" class=\"login-forgot-pass\">¿Olvidaste tu contraseña?</a>\n");
      out.write("        <!--<div class=\"underlay-photo\"></div>-->\n");
      out.write("        <div class=\"underlay-black\"></div> \n");
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
