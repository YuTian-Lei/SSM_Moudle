<%--
  Created by IntelliJ IDEA.
  User: Administrator.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>课程列表</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>imooc-成员管理</h1>
        </div>
    </div>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="emps_table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="check_all"/>
                    </th>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>密码</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${persons}" var="person">
                    <tr>
                        <td><input type='checkbox' class='check_item'/></td>
                        <td>${person.id}</td>
                        <td>${person.name}</td>
                        <td>${person.password}</td>
                        <td>
                            <form action="${pageContext.request.contextPath}/person/getById/${person.id}" method="get">
                                <button class="btn btn-primary btn-sm edit_btn" type="submit">
                                    <span class="glyphicon glyphicon-pencil">编辑</span>
                                </button>
                            </form>
                        </td>
                        <td>
                            <form action="${pageContext.request.contextPath}/person/delete/${person.id}" method="post">
                                <button class="btn btn-danger btn-sm delete_btn" type="submit">
                                    <input type="hidden" name="_method" value="DELETE"/>
                                    <span class="glyphicon glyphicon-trash">删除</span>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
