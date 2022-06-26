<%-- 
    Document   : login
    Created on : 26/06/2022, 12:19:16 AM
    Author     : Alfredo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>::AwkiCare:.</title>
        <link rel="icon" type="image/png" href="views/favicon.png">
        <style type="text/css">
          @import url(https://fonts.googleapis.com/css?family=Open+Sans:100,300,400,700);
          @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

          body, html {
            height: 100%;
          }
          body {
            font-family: 'Open Sans';
            font-weight: 100;
            display: flex;
            overflow: hidden;
          }
          input {
            -webkit-input-placeholder {
               color: rgba(255,255,255,0.7);
            }
            -moz-placeholder {
               color: rgba(255,255,255,0.7);  
            }
            -ms-input-placeholder {  
               color: rgba(255,255,255,0.7);  
            }
            &:focus {
              outline: 0 transparent solid;
              -webkit-input-placeholder {
               color: rgba(0,0,0,0.7);
              }
              -moz-placeholder {
                 color: rgba(0,0,0,0.7);  
              }
              -ms-input-placeholder {  
                 color: rgba(0,0,0,0.7);  
              }
            }
          }

          .login-form {
            background: #111;
            box-shadow: 0 0 1rem rgba(0,0,0,0.3);
            min-height: 10rem;
            margin: auto;
            max-width: 50%;
            padding: .5rem;
            border-radius: 20px;
          }
          .login-text {


            color: white;
            font-size: 1.5rem;
            margin: 0 auto;
            max-width: 50%;
            padding: .5rem;
            text-align: center;


          }
          .fa-stack-1x {
              color: black;
            }

          .login-username, .login-password {
            background: transparent;
            border: 0 solid;
            border-bottom: 1px solid rgba(white, .5);
            color: white;
            display: block;
            margin: 1rem;
            padding: .5rem;
            transition: 250ms background ease-in;
            width: calc(100% - 3rem);
            &:focus {
              background: white;
              color: black;
              transition: 250ms background ease-in;
            }
          }

          .login-forgot-pass {

            bottom: 0;
            color: white;
            cursor: pointer;
            display: block;
            font-size: 75%;
            left: 0;
            opacity: 0.6;
            padding: .5rem;
            position: absolute;
            text-align: center;

            width: 100%;
            &:hover {
              opacity: 1;
            }
          }
          .login-submit {
            border: 1px solid white;
            background: transparent;
            color: white;
            display: block;
            margin: 1rem auto;
            min-width: 1px;
            padding: .25rem;
            transition: 250ms background ease-in;
            &:hover, &:focus {
              background: white;
              color: black;
              transition: 250ms background ease-in;
            }
          }

          [class*=underlay] {
            left: 0;
            min-height: 100%;
            min-width: 100%;
            position: fixed;
            top: 0;
          }
          .underlay-photo {
            animation: hue-rotate 6s infinite;
            background: url('public/images/fondo.jpg');
            background-size: cover;
            -webkit-filter: grayscale(30%);
            z-index: -1;
          }
          .underlay-black {
            background: rgba(0,0,0,0.5);
            z-index: -1;
          }

          @keyframes hue-rotate {
            from {
              -webkit-filter: grayscale(30%) hue-rotate(0deg);
            }
            to {
              -webkit-filter: grayscale(30%) hue-rotate(360deg);
            }
          }
        </style>
        <link rel="shortcut icon" type="image/x-icon" href="public/images/favicon.ico" />
        <script type='text/javascript'>
          santyLibBgAleat=function(){
            this.v="1.0";
            this.imagenes=function(){
              var x=arguments,img=this.a(x);
              this.s(img)};
              this.a=function(r){
                var a=Math.random()*r.length;
                a=Math.floor(a);
                return(r[a])
              };
              this.c=function(b){
                head=document.getElementsByTagName("head")[0];
                if(!head)
                  return;
                var s=document.createElement("style");
                s.type='text/css';
                s.innerHTML=b;
                head.appendChild(s)};
                this.s=function(b){
                  var o=undefined;
                  b.css=(b.css!==o)?b.css:"";
                  b.url=(b.url!==o)?b.url:"";
                  this.c("body{background:url('"+b.url+"') "+b.css+"}")
                }
              };
              $santyBA=new santyLibBgAleat();
              $santyBA.imagenes(
                {url:"public/images/01.jpg"},
                {url:"public/images/02.jpg"},
                {url:"public/images/03.jpg"},
                {url:"public/images/04.jpg"},
                {url:"public/images/05.jpg"}
        );
        </script>
    </head>
    <body>
        <form class="login-form" method="POST" action="">
          <p class="login-text">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-lock fa-stack-1x"></i>
            </span>
          </p>
          <input type="text" name="usuario" class="login-username" autofocus="true" required="true" placeholder="Usuario" />
          <input type="password" name="clave" class="login-password" required="true" placeholder="Contraseña" />
          <input type="submit" name="Login" value="Entrar" class="login-submit" />
        </form>
        <a href="#" class="login-forgot-pass">¿Olvidaste tu contraseña?</a>
        <!--<div class="underlay-photo"></div>-->
        <div class="underlay-black"></div> 
    </body>
</html>
