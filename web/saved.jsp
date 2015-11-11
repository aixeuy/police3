<%@ page import="Data.Service" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/17
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    String user=request.getParameter("user");
    String instr=request.getParameter("instr");
    if(instr.equals("edit")) {
        int id = Integer.parseInt(request.getParameter("id"));
        String type = request.getParameter("type");
        String skin_color = request.getParameter("skin_color");
        String scarf = request.getParameter("scarf");
        String glasses = request.getParameter("glasses");
        String u_color = request.getParameter("u_color");
        String bag = request.getParameter("bag");
        int l_length=0;
        try{l_length = Integer.parseInt(request.getParameter("l_length"));}catch (NumberFormatException e){}
        String figure = request.getParameter("figure");
        String hair_style = request.getParameter("hair_style");
        String character = request.getParameter("character");
        String u_style = request.getParameter("u_style");
        int u_length=0;
        try{u_length = Integer.parseInt(request.getParameter("u_length"));}catch (NumberFormatException e){}
        String l_style = request.getParameter("l_style");
        String shoe_style = request.getParameter("shoe_style");
        String behavior = request.getParameter("behavior");
        int height=0;
        try{height = Integer.parseInt(request.getParameter("height"));}catch (NumberFormatException e){}
        String hat = request.getParameter("hat");
        String hair_color = request.getParameter("hair_color");
        String collar = request.getParameter("collar");
        String u_character = request.getParameter("u_character");
        String l_color = request.getParameter("l_color");
        String shoe_color = request.getParameter("shoe_color");
        Service.edit(Service.getPersonByIndex(id), type, skin_color, glasses, u_color, scarf, bag, l_length
                , figure, hair_style, character, u_style, u_length, l_style, shoe_style,
                behavior, height, hat, hair_color, collar, u_character,
                l_color, shoe_color);
    }
    else if(instr.equals("add")){
        String type = request.getParameter("type");
        String skin_color = request.getParameter("skin_color");
        String scarf = request.getParameter("scarf");
        String glasses = request.getParameter("glasses");
        String u_color = request.getParameter("u_color");
        String bag = request.getParameter("bag");
        int l_length=0;
        try{l_length = Integer.parseInt(request.getParameter("l_length"));}catch (NumberFormatException e){}
        String figure = request.getParameter("figure");
        String hair_style = request.getParameter("hair_style");
        String character = request.getParameter("character");
        String u_style = request.getParameter("u_style");
        int u_length=0;
        try{u_length = Integer.parseInt(request.getParameter("u_length"));}catch (NumberFormatException e){}
        String l_style = request.getParameter("l_style");
        String shoe_style = request.getParameter("shoe_style");
        String behavior = request.getParameter("behavior");
        int height=0;
        try{height = Integer.parseInt(request.getParameter("height"));}catch (NumberFormatException e){}
        String hat = request.getParameter("hat");
        String hair_color = request.getParameter("hair_color");
        String collar = request.getParameter("collar");
        String u_character = request.getParameter("u_character");
        String l_color = request.getParameter("l_color");
        String shoe_color = request.getParameter("shoe_color");
        Service.add(type,skin_color,glasses,u_color,scarf,bag,l_length
                ,figure,hair_style,character,u_style,u_length,l_style,shoe_style,
                behavior,height,hat,hair_color,collar,u_character,
                l_color,shoe_color);
    }
    else if(instr.equals("delete")){
        int id = Integer.parseInt(request.getParameter("id"));
        Service.deletePerson(Service.getPersonByIndex(id));
    }
%>
<p>已保存</p>
<form id="back" method="post" action="/pd">
    <input type="hidden" name="user" value="<%out.print(user);%>">
    <input type="submit" value="back">
</form>
</body>
</html>
