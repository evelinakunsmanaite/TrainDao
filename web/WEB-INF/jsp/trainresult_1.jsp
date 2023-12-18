<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Результаты поиска</title>
        <c:url var="css" value="/resources/css/spisok.css"></c:url> <!-- Генерируем URL для CSS файла -->
        <link rel="stylesheet" href="${css}" type="text/css"/>
          <style>
                <%@include file="/resources/css/spisok.css" %><!-- Генерируем URL для CSS файла -->
            </style>

    </head>
    <body>
        <table align="center">
            <tr>
                <th>Номер поезда</th>
                <th>Пункт прибытия</th>
                <th>Номер поезда</th>
                <th>Время отправления</th>
                <th>Места</th>
            </tr>
            <c:forEach var="train" items="${result}">
                <tr align="center">
                    <td>${train.getNumber()}</td>
                    <td>${train.getPunktpribitiya()}</td>
                    <td>${train.number}</td>
                    <td>${train.time}</td>
                    <c:choose>
                        <c:when test="${seatsType eq 'Общие'}">
                            <td><c:out value="${train.getSeatsObjie()}" /></td>
                        </c:when>
                        <c:when test="${seatsType eq 'Купе'}">
                            <td><c:out value="${train.getSeatsKupe()}" /></td>
                        </c:when>
                        <c:when test="${seatsType eq 'Люкс'}">
                            <td><c:out value="${train.getSeatsLux()}" /></td>
                        </c:when>
                        <c:when test="${seatsType eq 'Плацкарт'}">
                            <td><c:out value="${train.getSeatsPlackart()}" /></td>
                        </c:when>
                    </c:choose>
                </tr>
            </c:forEach>
        </table>
        <div class="center">
            <form action="WelcomeServlet">
                <input type="hidden" name="toCab" value="true"/> 
                <input class="b" type="submit" value="Назад"/> 
            </form>
        </div>
    </body>
</html>
