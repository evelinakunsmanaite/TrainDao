<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">

            <c:url var="css" value="/resources/css/spisok.css"></c:url> <!-- Генерируем URL для CSS файла -->
            <link rel="stylesheet" href="${css}" type="text/css"/>
            <style>
                <%@include file="/resources/css/spisok.css" %><!-- Генерируем URL для CSS файла -->
            </style>

        </head>
        <body>
            <table align="center">
                <tr>
                    <th><fmt:message key="searchResults.trainNumber" /></th>
                    <th><fmt:message key="searchResults.arrivalPoint" /></th>
                    <th><fmt:message key="searchResults.trainNumber" /></th>
                    <th><fmt:message key="searchResults.departureTime" /></th>
                    <th><fmt:message key="searchResults.seats" /></th>
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
                            <c:when test="${seatsType eq 'Common'}">
                                <td><c:out value="${train.getSeatsObjie()}" /></td>
                            </c:when>
                            <c:when test="${seatsType eq 'Coupe'}">
                                <td><c:out value="${train.getSeatsKupe()}" /></td>
                            </c:when>
                            <c:when test="${seatsType eq 'Luxury'}">
                                <td><c:out value="${train.getSeatsLux()}" /></td>
                            </c:when>
                            <c:when test="${seatsType eq 'Platzkart'}">
                                <td><c:out value="${train.getSeatsPlackart()}" /></td>
                            </c:when>
                        </c:choose>
                    </tr>
                </c:forEach>
            </table>
            <div class="center">
                <form action="page" method="post">
                    <input type="hidden" name="page" value="toUser">
                    <input type="submit" value="<fmt:message key="button.toHomepage" />">
                </form>
            </div>
        </body></fmt:bundle>  
</html>
