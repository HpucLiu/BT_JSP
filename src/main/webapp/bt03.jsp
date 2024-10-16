<%-- 
    Document   : bt03
    Created on : Oct 16, 2024, 8:50:46 AM
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
        <h1>Diện tích - Chu vi hình tròn</h1>
        <form action="bt03.jsp" method="POST">
            Hãy nhập bán kính: <input type="text" name="bankinh" value="" />
            <input type="submit" value="Tính toán" /> <input type="reset" value="Tiếp tục" />
        </form>
        <hr>
        <%
            String r = request.getParameter("bankinh");
            if(r!=null){
            double bk = Double.parseDouble(r);
            double dt = Math.PI *bk*bk;
            double cv = 2*Math.PI*bk;
            out.println("Diện tích: "+ dt + "<br></br>");
            out.println("Chu vi: "+ cv);
            }
            
        %>
    </body>
</html>
