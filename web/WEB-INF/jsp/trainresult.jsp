<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Список поездов</title>
       <c:url var="css" value="/resources/css/spisok.css"></c:url> <!-- Генерируем URL для CSS файла -->
        <link rel="stylesheet" href="${css}" type="text/css"/>
          <style>
                <%@include file="/resources/css/spisok.css" %><!-- Генерируем URL для CSS файла -->
            </style>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty result}">
                <table align="center">
                    <thead>
                        <tr>
                            <th>Идентификатор</th>
                            <th>Пункт отправления</th>
                            <th>Пункт прибытия</th>
                            <th>Номер поезда</th>
                            <th>Время отправления</th>
                            <th>Места общего типа</th>
                            <th>Места купе</th>
                            <th>Места плацкартного типа</th>
                            <th>Места люкс</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="train" items="${result}">
                            <tr align="center">
                                <td>${train.id}</td>
                                <td>${train.punktotpravleniya}</td>
                                <td>${train.punktpribitiya}</td>
                                <td>${train.number}</td>
                                <td>${train.time}</td>
                                <td>${train.seatsObjie}</td>
                                <td>${train.seatsKupe}</td>
                                <td>${train.seatsPlackart}</td>
                                <td>${train.seatsLux}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <div class="center">
                    <form action="WelcomeServlet">
                        <input type="hidden" name="toCab" value="true"/>
                        <input class="b" type="submit" value="Назад"/>
                    </form>
                </div>
            </c:otherwise>
        </c:choose>
        <div class="center">
            <form action="WelcomeServlet">
                <input type="hidden" name="toCab" value="true"/> 
                <input class="b" type="submit" value="Назад"/> 
            </form>
        </div>
    </body>
</html>
