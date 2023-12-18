<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
    <head>
        <title>Поиск ж/д билетов</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">
        <c:url var="css" value="/resources/css/error.css"></c:url> <!-- Генерируем URL для CSS файла -->
          <style>
                <%@include file="/resources/css/error.css" %><!-- Генерируем URL для CSS файла -->
            </style>
        <link rel="stylesheet" href="${css}" type="text/css"/>
    </head>
    <body class="loading">
        <h1>500</h1>
        <h2>Неверный логин и/или пароль. 
            Проверьте, пожалуйста, данные <b>:(</b></h2>
        <div class="gears">
            <div class="gear one">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
            <div class="gear two">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
            <div class="gear three">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
        </div>
        <div class="center">
            <form action="WelcomeServlet">
                <input type="hidden" name="toCab" value="true"/> 
                <input class="b" type="submit" value="Назад"/> 
            </form>
        </div>

    </body>

</html>
