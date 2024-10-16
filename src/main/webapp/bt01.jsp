<%-- 
    Document   : bt01
    Created on : Oct 16, 2024, 8:26:58 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chương trình đầu tiên</h1>
        <form action="bt01.jsp" method="POST">
            Hãy nhập họ tên: <input type="text" name="hoten" value="" /> 
            <input type="submit" value="Thi hành" />
        </form>
        <hr>
        <%
            request.setCharacterEncoding("UTF-8");
            String hoten = request.getParameter("hoten");
            if(hoten!=null){
            out.print("Chào bạn <b>" +hoten + "<b>");
            }        
        %>
        
    </body>
</html>
