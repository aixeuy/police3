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
    response.setCharacterEncoding("GBK");
%>
<table>
    <form id="edit" method="post" action="saved.jsp">
        <input type="hidden" name="user" value="<%out.print(user);%>">
        <input type="hidden" name="instr" value="edit">
        <tr><td>编号</td><td><%out.println(p.getId());%><input type="hidden" name="id" value=<%out.println(id);%>></td></tr>
        <tr><td>类型</td><td><select name="type">
            <option value="受害人"<%if(p.getType().equals("受害人")){out.print("selected=\"selected\"");}%>>受害人</option>
            <option value="报案人"<%if(p.getType().equals("报案人")){out.print("selected=\"selected\"");}%>>报案人</option>
            <option value="受害/报案人"<%if(p.getType().equals("受害/报案人")){out.print("selected=\"selected\"");}%>>受害/报案人</option>
            <option value="其他"<%if(p.getType().equals("其他")){out.print("selected=\"selected\"");}%>>其他</option>
            </select></td></tr>
        <tr><td>肤色</td><td><input type="text" name="skin_color" value="<%out.println(p.getSkin_color());%>"></td></tr>
        <tr><td>围巾类型</td><td><input type="text" name="scarf" value="<%out.println(p.getScarf());%>"></td></tr>
        <tr><td>眼镜</td><td><input type="text" name="glasses" value="<%out.println(p.getGlasses());%>"></td></tr>
        <tr><td>上衣颜色</td><td><input type="text" name="u_color" value="<%out.println(p.getU_color());%>"></td></tr>
        <tr><td>包</td><td><select name="bag">
            <option value="挎包"<%if(p.getBag().equals("挎包")){out.print("selected=\"selected\"");}%>>挎包</option>
            <option value="背包"<%if(p.getBag().equals("背包")){out.print("selected=\"selected\"");}%>>背包</option>
            <option value="手提包"<%if(p.getBag().equals("手提包")){out.print("selected=\"selected\"");}%>>手提包</option>
            <option value="无"<%if(p.getBag().equals("无")){out.print("selected=\"selected\"");}%>>无</option>
        </select></td></tr>
        <tr><td>裤长</td><td><input type="text" name="l_length" value="<%out.println(p.getL_length());%>">cm</td></tr>
        <tr><td>体型</td><td><input type="text" name="figure" value="<%out.println(p.getFigure());%>"></td></tr>
        <tr><td>发型</td><td><input type="text" name="hair_style" value="<%out.println(p.getHair_style());%>"></td></tr>
        <tr><td>体表特征</td><td><input type="text" name="character" value="<%out.println(p.getCharacter());%>"></td></tr>
        <tr><td>上衣款式</td><td><input type="text" name="u_style" value="<%out.println(p.getU_style());%>"></td></tr>
        <tr><td>上衣长度</td><td><input type="text" name="u_length" value="<%out.println(p.getU_length());%>">cm</td></tr>
        <tr><td>裤型</td><td><input type="text" name="l_style" value="<%out.println(p.getL_style());%>"></td></tr>
        <tr><td>鞋型</td><td><input type="text" name="shoe_style" value="<%out.println(p.getShoe_style());%>"></td></tr>
        <tr><td>行为特征</td><td><select name="behavior">
            <option value="打人"<%if(p.getBehavior().equals("打人")){out.print("selected=\"selected\"");}%>>打人</option>
            <option value="持枪械杀人"<%if(p.getBehavior().equals("持枪械杀人")){out.print("selected=\"selected\"");}%>>持枪械杀人</option>
            <option value="驾车撞人"<%if(p.getBehavior().equals("驾车撞人")){out.print("selected=\"selected\"");}%>>驾车撞人</option>
            <option value="持刀伤人"<%if(p.getBehavior().equals("持刀伤人")){out.print("selected=\"selected\"");}%>>持刀伤人</option>
        </select></td></tr>
        <tr><td>身高</td><td><input type="text" name="height" value="<%out.println(p.getHeight());%>">cm</td></tr>
        <tr><td>帽子</td><td><input type="text" name="hat" value="<%out.println(p.getHat());%>"></td></tr>
        <tr><td>发色</td><td><input type="text" name="hair_color" value="<%out.println(p.getHair_color());%>"></td></tr>
        <tr><td>衣领</td><td><input type="text" name="collar" value="<%out.println(p.getCollar());%>"></td></tr>
        <tr><td>上衣特征</td><td><input type="text" name="u_character" value="<%out.println(p.getU_character());%>"></td></tr>
        <tr><td>裤子颜色</td><td><input type="text" name="l_color" value="<%out.println(p.getL_color());%>"></td></tr>
        <tr><td>鞋子颜色</td><td><input type="text" name="shoe_color" value="<%out.println(p.getShoe_color());%>"></td></tr>
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
