<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/1
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table border="1px" width="500px" align="center">
    <tr>
        <td colspan="8" align="center"><h2>人员列表</h2></td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="per">
        <tr>
            <td>${per.id}</td>
            <td>${per.name}</td>
            <td>
                <c:if test="${per.gender==0}">女</c:if>
                <c:if test="${per.gender==1}">男</c:if>
            </td>
            <td>${per.age}</td>
            <td>
                <c:if test="${per.rank==1}">1级</c:if>
                <c:if test="${per.rank==2}">2级</c:if>
                <c:if test="${per.rank==3}">3级</c:if>
                <c:if test="${per.rank==4}">4级</c:if>
                <c:if test="${per.rank==5}">5级</c:if>
            </td>
            <td>${per.department}</td>
            <td><a href="/dodel?id=${per.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
<p style="margin-left: 480px"><a href="/toadd">添加成员</a></p>
</body>
</html>
<script type="text/javascript">
    $("tr:even").css("background-color","rgb(102,254,255)");
    $("tr:odd").css("background-color","rgb(0,224,0)");
</script>
