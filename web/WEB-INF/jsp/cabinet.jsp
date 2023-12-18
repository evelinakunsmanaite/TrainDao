 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> <!-- Подключение шрифта Poppins из Google Fonts -->
    <title>Аккаунт</title>
    <meta charset="UTF-8">
      <style>
                <%@include file="/resources/css/cabinet.css" %><!-- Генерируем URL для CSS файла -->
            </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cabinet.css" type="text/css"/> <!-- Link to the cabinet.css file -->
</head>
<body>
<h1 align="center">Добро пожаловать, ${name}!</h1>
<div class="container">
    <div class="column">
        <div class="form-block">
            <img src="resources/img/поезд.png" alt="Avatar" class="avatar-image">
            <form action="trainServlet" method="post">
                <h2 align="center">Список поездов</h2>
                <button class="b" type="submit">Показать</button>
            </form>
        </div>
    </div>
    <div class="column">
        <div class="form-block">
            <img src="resources/img/местонахождение.png" alt="Avatar" class="avatar-image">
            <form action="punktServlet" method="post">
                <h2 align="center"><label for="punkt">Пункт прибытия:</label></h2>
                <input type="text" id="punkt" name="punkt">
                <button class="b" type="submit">Показать</button>
            </form>
        </div>
    </div>
    <div class="column">
        <div class="form-block">
            <img src="resources/img/время.png" alt="Avatar" class="avatar-image">
            <form action="trainsServlet" method="post">
                <h2 align="center"><label for="destination">Пункт назначения:</label></h2>
                <input type="text" id="destination" name="destination">
                <br>
                <h2 align="center"><label for="departureTime">Время отправления (в формате HH:mm):</label></h2>
                <input type="text" id="departureTime" name="departureTime">
                <br>
                <input type="submit" value="Найти поезда">
            </form>
        </div>
    </div>
    <div class="column">
        <div class="form-block">
            <img src="resources/img/сиденье.png" alt="Avatar" class="avatar-image">
            <form action="trainsssServlet" method="post">
                <h2 align="center"><label for="destination">Пункт назначения:</label></h2>
                <input type="text" name="destination" id="destination">
                <h2 align="center"><label for="seatsType">Тип места:</label></h2>
                <select name="seatsType" id="seatsType">
                    <option value="Общие">Общие</option>
                    <option value="Купе">Купе</option>
                    <option value="Люкс">Люкс</option>
                    <option value="Плацкарт">Плацкарт</option>
                </select>
                <input type="submit" value="Найти">
            </form>
        </div>
    </div>
</div>
<div class="center">
    <form action="WelcomeServlet" class="btn-back">
        <input type="hidden" name="logout" value="true"/>
        <input class="btn" type="submit" value="Назад"/>
    </form>
</div>
</body>
</html>
