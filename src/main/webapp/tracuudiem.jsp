<%-- 
    Document   : tracuudiem
    Created on : Oct 16, 2024, 10:53:19 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="my.common.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tra cứu điểm</h1>
        <form action="tracuudiem.jsp" method="POST">
            Số báo danh: <input type="text" name="sobd" value="" />
            Họ tên: <input type="text" name="hoten" value="" />
            <button type="submit">Tra cứu</button>
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String sobd = request.getParameter("sobd");
            String hoten = request.getParameter("hoten");

            if (hoten != null || sobd != null) {
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                conn = Database.getConnection();
                if (hoten != null || !hoten.isEmpty()) {
                    ps = conn.prepareStatement("select * from ThiSinh where hoten like ?");
                    ps.setString(1, "%" + hoten + "%");
                } else if (sobd != null || !sobd.isEmpty()) {
                    ps = conn.prepareStatement("select * from ThiSinh where sobd = ?");
                    ps.setString(1, sobd);
                }
                rs = ps.executeQuery();
        %>
        <table border="1">
            <tr>
                <td>Số báo danh</td>
                <td>Họ tên</td>
                <td>Địa chỉ</td>
                <td>Điểm toán</td>
                <td>Điểm Lý</td>
                <td>Diểm Hóa</td>
                <td>Tổng điểm</td>
            </tr>
            <%
                while (rs.next()) {
                    double Tongdiem = rs.getFloat(4) + rs.getFloat(5) + rs.getFloat(6);
            %>
            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(3)%></td>
                <td><%= rs.getString(4)%></td>
                <td><%= rs.getString(5)%></td>
                <td><%= rs.getString(6)%></td>
                <td><%= Tongdiem%></td>
            </tr>
            <%
                }
            %> 
        </table>

        <%
            }
        %>
    </body>
</html>
