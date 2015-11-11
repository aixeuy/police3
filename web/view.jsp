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
    <title>view person</title>
</head>
<body>
<%
    String user=request.getParameter("user");
    int id=Integer.parseInt(request.getParameter("id"));
    //out.println(id);
    //Hbmain.data.onedit=Hbmain.data.list.get(id);
    Person p= Service.getPersonByIndex(id);
%>
<table>
    <tr><td>编号</td><td><%out.println(p.getId());%></td></tr>
    <tr><td>类型</td><td><%out.println(p.getType());%></td></tr>
    <tr><td>肤色</td><td><%out.println(p.getSkin_color());%></td></tr>
    <tr><td>围巾类型</td><td><%out.println(p.getScarf());%></td></tr>
    <tr><td>眼镜</td><td><%out.println(p.getGlasses());%></td></tr>
    <tr><td>上衣颜色</td><td><%out.println(p.getU_color());%></td></tr>
    <tr><td>包</td><td><%out.println(p.getBag());%></td></tr>
    <tr><td>裤长</td><td><%out.println(p.getL_length());%>cm</td></tr>
    <tr><td>体型</td><td><%out.println(p.getFigure());%></td></tr>
    <tr><td>发型</td><td><%out.println(p.getHair_style());%></td></tr>
    <tr><td>体表特征</td><td><%out.println(p.getCharacter());%></td></tr>
    <tr><td>上衣款式</td><td><%out.println(p.getU_style());%></td></tr>
    <tr><td>上衣长度</td><td><%out.println(p.getU_length());%>cm</td></tr>
    <tr><td>裤型</td><td><%out.println(p.getL_style());%></td></tr>
    <tr><td>鞋型</td><td><%out.println(p.getShoe_style());%></td></tr>
    <tr><td>行为特征</td><td><%out.println(p.getBehavior());%></td></tr>
    <tr><td>身高</td><td><%out.println(p.getHeight());%>cm</td></tr>
    <tr><td>帽子</td><td><%out.println(p.getHat());%></td></tr>
    <tr><td>发色</td><td><%out.println(p.getHair_color());%></td></tr>
    <tr><td>衣领</td><td><%out.println(p.getCollar());%></td></tr>
    <tr><td>上衣特征</td><td><%out.println(p.getU_character());%></td></tr>
    <tr><td>裤子颜色</td><td><%out.println(p.getL_color());%></td></tr>
    <tr><td>鞋子颜色</td><td><%out.println(p.getShoe_color());%></td></tr>
    <!--private int id;
    private String type;//类型(1：受害人2：报案人3：受害/报案人4：其他)
    private String skin_color;//肤色
    private String scarf;//围巾类型
    private String glasses;//眼镜
    private String u_color;//上衣颜色
    private String bag;//包(1：挎包2：背包3：手提包4：无)
    private int l_length;//裤长
    private String figure;//体型
    private String hair_style;//发型
    private String character;//体表特征
    private String u_style;//上衣款式
    private int u_length;//上衣长度
    private String l_style;//裤型
    private String shoe_style;//鞋型
    private String behavior;//行为特征(1打人2：持枪械杀人3：驾车撞人4：持刀伤人)
    private int height;//身高
    private String hat;//帽子
    private String hair_color;//发色
    private String collar;//衣领
    private String u_character;//上衣特征
    private String l_color;//裤子颜色
    private String shoe_color;//鞋子颜色-->
    <tr><td></td><td>
        <form id="f1" method="post" action="/pd">
            <input type="hidden" name="user" value="<%out.print(user);%>">
            <input type="submit" value="back">
        </form></td>
    </tr>
</table>
</body>
</html>
