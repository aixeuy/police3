<%@ page import="Data.Hbmain" %>
<%@ page import="person.Person" %>
<%@ page import="Data.Service" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/16
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add person</title>
</head>
<body>
<%
    String user=request.getParameter("user");
    //out.println(id);
    //Hbmain.data.onedit=Hbmain.data.list.get(id);
    response.setCharacterEncoding("GBK");
%>
<table>
    <form id="sdd" method="post" action="saved.jsp">
        <input type="hidden" name="user" value="<%out.print(user);%>">
        <input type="hidden" name="instr" value="add">
        <tr><td>类型</td><td><select name="type">
            <option value="受害人">受害人</option>
            <option value="报案人">报案人</option>
            <option value="受害/报案人">受害/报案人</option>
            <option value="其他">其他</option>
        </select></td></tr>
        <tr><td>肤色</td><td><input type="text" name="skin_color"></td></tr>
        <tr><td>围巾类型</td><td><input type="text" name="scarf"></td></tr>
        <tr><td>眼镜</td><td><input type="text" name="glasses"></td></tr>
        <tr><td>上衣颜色</td><td><input type="text" name="u_color"></td></tr>
        <tr><td>包</td><td><select name="bag">
            <option value="挎包">挎包</option>
            <option value="背包">背包</option>
            <option value="手提包">手提包</option>
            <option value="无">无</option>
        </select></td></tr>
        <tr><td>裤长</td><td><input type="text" name="l_length">cm</td></tr>
        <tr><td>体型</td><td><input type="text" name="figure"></td></tr>
        <tr><td>发型</td><td><input type="text" name="hair_style"></td></tr>
        <tr><td>体表特征</td><td><input type="text" name="character"></td></tr>
        <tr><td>上衣款式</td><td><input type="text" name="u_style"></td></tr>
        <tr><td>上衣长度</td><td><input type="text" name="u_length">cm</td></tr>
        <tr><td>裤型</td><td><input type="text" name="l_style"></td></tr>
        <tr><td>鞋型</td><td><input type="text" name="shoe_style"></td></tr>
        <tr><td>行为特征</td><td><select name="behavior">
            <option value="打人">打人</option>
            <option value="持枪械杀人">持枪械杀人</option>
            <option value="驾车撞人">驾车撞人</option>
            <option value="持刀伤人">持刀伤人</option>
        </select></td></tr>
        <tr><td>身高</td><td><input type="text" name="height">cm</td></tr>
        <tr><td>帽子</td><td><input type="text" name="hat"></td></tr>
        <tr><td>发色</td><td><input type="text" name="hair_color"></td></tr>
        <tr><td>衣领</td><td><input type="text" name="collar"></td></tr>
        <tr><td>上衣特征</td><td><input type="text" name="u_character"></td></tr>
        <tr><td>裤子颜色</td><td><input type="text" name="l_color"></td></tr>
        <tr><td>鞋子颜色</td><td><input type="text" name="shoe_color"></td></tr>
        <tr><td><input type="submit" value="submit"></td><td><input type="reset" value="reset"></td></tr>

    </form>
    <tr><td></td><td>
        <form id="back" method="post" action="/pd">
            <input type="hidden" name="user" value="<%out.print(user);%>">
            <input type="submit" value="back">
        </form></td>
    </tr>
</table>
</body>
</html>

