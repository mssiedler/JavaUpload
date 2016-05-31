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
           
            //Arquivos
           out.print(up.getFiles().get(0) + "<br/>");
           //Outros campos do form
           out.print(up.getForm().get("txtNome")+ "<br/>");
           out.print(up.getForm().get("txtEmail")+ "<br/>");
       }
       else
       {
           
       }
%>
<img src="arquivos/<%=up.getFiles().get(0)%>" />