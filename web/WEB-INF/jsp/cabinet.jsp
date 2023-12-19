<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> <!-- Подключение шрифта Poppins из Google Fonts -->
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">  
            <meta charset="UTF-8">
            <style>
                <%@include file="/resources/css/cabinet.css" %><!-- Генерируем URL для CSS файла -->
            </style>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cabinet.css" type="text/css"/> <!-- Link to the cabinet.css file -->
        </head>
        <body>
            <h1 align="center"><fmt:message key="account.welcome" />, <%= session.getAttribute("name")%>!</h1>
            <div class="container">
                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/поезд.png" alt="Avatar" class="avatar-image">
                        <form action="trainServlet" method="post">
                            <h2 align="center"><fmt:message key="account.listTrains" /></h2>
                            <button class="b" type="submit"><fmt:message key="account.show" /></button>
                        </form>
                    </div>
                </div>
                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/местонахождение.png" alt="Avatar" class="avatar-image">
                        <form action="punktServlet" method="post">
                            <h2 align="center"><fmt:message key="account.arrivalPoint" /></h2>
                            <input type="text" id="punkt" name="punkt">
                            <button class="b" type="submit"><fmt:message key="account.show" /></button>
                        </form>
                    </div>
                </div>
                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/время.png" alt="Avatar" class="avatar-image">
                        <form action="trainsServlet" method="post">
                            <h2 align="center"><label for="destination"><fmt:message key="account.destinationPoint" /></label></h2>
                            <input type="text" id="destination" name="destination">
                            <br>
                            <h2 align="center"><label for="departureTime"><fmt:message key="account.departureTime" /></label></h2>
                            <input type="text" id="departureTime" name="departureTime">
                            <br>
                            <input type="submit" value="<fmt:message key="account.findTrains" />">
                        </form>
                    </div>
                </div>
                <div class="column">
                    <div class="form-block">
                        <img src="resources/img/сиденье.png" alt="Avatar" class="avatar-image">
                        <form action="trainsssServlet" method="post">
                            <h2 align="center"><label for="destination"><fmt:message key="account.destinationPoint" /></label></h2>
                            <input type="text" name="destination" id="destination">
                            <h2 align="center"><label for="seatsType"><fmt:message key="account.seatType" /></label></h2>
                            <select name="seatsType" id="seatsType">
                                <option value="<fmt:message key="account.common" />"><fmt:message key="account.common" /></option>
                                <option value="<fmt:message key="account.coupe" />"><fmt:message key="account.coupe" /></option>
                                <option value="<fmt:message key="account.lux" />"><fmt:message key="account.lux" /></option>
                                <option value="<fmt:message key="account.platzkart" />"><fmt:message key="account.platzkart" /></option>
                            </select>
                            <input type="submit" value="<fmt:message key="account.find" />">
                        </form>
                    </div>
                </div>
            </div>
            <div class="center">
                <form action="page" method="post" class="btn-back">
                    <input type="hidden" name="page" value="toLogin">
                    <input class="btn" type="submit" value="<fmt:message key="button.toHomepage"/>">
                </form> 
            </div>
        </body></fmt:bundle> 
</html>

