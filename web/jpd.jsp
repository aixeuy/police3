<%@ page import="java.util.ArrayList" %>
<%@ page import="person.Person" %>
<%--
  Created by IntelliJ IDEA.
  User: Win7uX32
  Date: 2015/7/16
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    Person p=new Person();
    p.setId(0);
%>
    <table>
    <tr>
        <td>人物0</td>
        <td>
    <form id="view0" method="post" action="view.jsp">
        <input type="hidden" name="id" value=0>
        <input type="hidden" name="instr" value="view">
        <input type="hidden" name="user" value="q">
        <input type="submit" value="view">
    </form>
        </td>
        <td>
    <form id="edit0" method="post" action="edit.jsp">
        <input type="hidden" name="id" value=0>
        <input type="hidden" name="instr" value="edit">
        <input type="hidden" name="user" value="q">
        <input type="submit" value="edit">
    </form>
        </td>
        <td>
    <form id="delete0" method="post" action="/pdl">
        <input type="hidden" name="id" value=0>
        <input type="hidden" name="instr" value="delete">
        <input type="hidden" name="user" value="q">
        <input type="submit" value="delete">
    </form>
        </td>
    </tr>
</table>
</body>
</html>
