<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/1
  Time: 16:51
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
<form action="/doadd" method="post">
    <table border="1px" align="center" width="500px">
        <tr>
            <td colspan="8" align="center"><h2>添加人员</h2></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name">*</td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <select name="gender">
                    <option value="2">请选择</option>
                    <option value="0">女</option>
                    <option value="1">男</option>
                </select>*
            </td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age">*</td>
        </tr>
        <tr>
            <td>等级：</td>
            <td>
                <select name="rank">
                    <option value="0">请选择</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select> *
            </td>
        </tr>
        <tr>
            <td>部门：</td>
            <td><input type="text" name="department"> *</td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("tr:even").css("background-color","rgb(102,254,255)");
    $("tr:odd").css("background-color","rgb(0,224,0)");
</script>
