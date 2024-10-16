<%-- 
    Document   : bt02
    Created on : Oct 16, 2024, 8:38:05 AM
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
        <h1>Diện tích - Chu vi HCN</h1>
        <form action="bt02.jsp" method="POST">
            <table border="0">
                    <tr>
                        <td>Hãy nhập chiều dài: </td>
                        <td><input type="text" name="dai" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Hãy nhập chiều rộng: </td>
                        <td><input type="text" name="rong" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Tính toán" />
                            <input type="reset" value="Tiếp tục" />
                        </td>
                    </tr>
            </table>
        </form>
        <hr>
        <%
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            if(dai!=null && rong!=null){
            double d = Double.parseDouble(dai);
            double r = Double.parseDouble(rong);
            double dt = 0;
            double cv = 0;
            dt = d*r;
            cv = (d+r)*2;
            out.println("Diện tích: "+dt+"<br></br>");
            out.println("Chu vi: "+cv);
            }
        %>
    </body>
</html>
