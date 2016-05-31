<%-- 
    Document   : enviado
    Created on : 07/03/2016, 17:45:10
    Author     : marcelosiedler
--%>


<%@page import="util.Upload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
       Upload up = new Upload();
       up.setFolderUpload("arquivos");
       if(up.formProcess(getServletContext(), request))
       {
           for(String file: up.getFiles())
           {
               out.print(file);
           }
       }
       else
       {
           out.print("erro");
       }
%>
