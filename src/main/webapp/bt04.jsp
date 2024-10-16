<%-- 
    Document   : bt04
    Created on : Oct 16, 2024, 8:58:07 AM
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
        <h1>Đổi ngoại tệ</h1>
        <form action="bt04.jsp" method="POST">

            <table border="0">            
                <tr>
                    <td>Cho biết số tiền: </td>
                    <td><input type="text" name="tien" value="" /></td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tê: </td>
                    <td><select name="ngoaite">
                            <option value="USD">USD</option>
                            <option value="GRP">GRP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Đổi tiền" />
                        <input type="reset" value="Tiếp tục" />
                    </td>
                </tr>
            </table>
        </form>
        <hr>
        <%

            String tien = request.getParameter("tien");
            String ngoaite = request.getParameter("ngoaite");

            if (tien != null) {
                double tienvnd = Double.parseDouble(tien);
                double sotien = 0;
                switch (ngoaite) {
                    case "USD":
                        sotien = tienvnd * 21.38;
                        break;
                    case "GBP":
                        sotien = tienvnd * 32.62;
                        break;
                    case "EUR":
                        sotien = tienvnd * 23.55;
                        break;
                    case "JPY":
                        sotien = tienvnd * 178.61;
                        break;
                    case "AUD":
                        sotien = tienvnd * 16.72;
                        break;
                    default:
                        break;
                }
                out.println("Số tiền đổi được: " + sotien + " đ");
            }
        %>
    </body>
</html>
