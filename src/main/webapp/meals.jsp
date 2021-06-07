<%--
  Created by IntelliJ IDEA.
  User: chingis
  Date: 07.06.2021
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>meals</title>
    <link href="./blocks/meals.css" rel="stylesheet" type="text/css">
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<table>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach var="meal" items="${requestScope.mealsList}">
<%--        <p>${meal}</p>--%>
        <c:if test="${meal.excess == true}">
            <c:set var="color" value="red"/>
        </c:if>
        <c:if test="${meal.excess == false}">
            <c:set var="color" value="green"/>
        </c:if>
        <tr>
            <td style="color: ${color}">${meal.dateTimeString}</td>
            <td style="color: ${color}">${meal.description}</td>
            <td style="color: ${color}">${meal.calories}</td>
            <td >Update</td>
            <td >Delete</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
