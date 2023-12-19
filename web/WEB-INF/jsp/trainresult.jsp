<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
    <fmt:bundle basename="com.localization.messages.msg">
    <title><fmt:message key="trainList.title" /></title>
    <c:url var="css" value="/resources/css/spisok.css"></c:url>
    <link rel="stylesheet" href="${css}" type="text/css"/>
    <style>
        <%@include file="/resources/css/spisok.css" %>
    </style>
</head>
<body>
    <c:choose>
        <c:when test="${not empty result}">
            <table align="center">
                <thead>
                    <tr>
                        <th><fmt:message key="trainList.id" /></th>
                        <th><fmt:message key="trainList.departurePoint" /></th>
                        <th><fmt:message key="trainList.arrivalPoint" /></th>
                        <th><fmt:message key="trainList.trainNumber" /></th>
                        <th><fmt:message key="trainList.departureTime" /></th>
                        <th><fmt:message key="trainList.commonSeats" /></th>
                        <th><fmt:message key="trainList.kupeSeats" /></th>
                        <th><fmt:message key="trainList.plackartSeats" /></th>
                        <th><fmt:message key="trainList.luxSeats" /></th>
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
                    <input class="b" type="submit" value="<fmt:message key="button.back" />"/>
                </form>
            </div>
        </c:otherwise>
    </c:choose>
    <div class="center">
        <form action="page" method="post">
            <input type="hidden" name="page" value="toUser">
            <input type="submit" value="<fmt:message key="button.toHomepage" />">
        </form>
    </div>
</body></fmt:bundle>
</html>
