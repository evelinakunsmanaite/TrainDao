<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="err" tagdir="/WEB-INF/tags" %>  


<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
    <fmt:bundle basename="com.localization.messages.msg">
            <title><fmt:message key="page.title" /></title> 
            <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"> <!-- Подключение шрифта Poppins из Google Fonts -->
            <script src="https://kit.fontawesome.com/a81368914c.js"></script> <!-- Подключение набора иконок FontAwesome -->
            <style>
                <%@include file="/resources/css/index.css" %><!-- Генерируем URL для CSS файла -->
            </style>
</head>
<body>
   <form action="LoginServlet" method="post">
      <div class="materialContainer">
         <div class="box">
            <div class="title">Добро пожаловать</div>
            <br>
             <err:error />
            <div class="input">
               <input type="text" name="login" id="login" required>
               <label for="login">Имя пользователя</label>
               <span class="spin"></span>
            </div>
            <div class="input">
               <input type="password" name="password" id="password" required>
               <label for="password">Пароль</label>
               <span class="spin"></span>
            </div>
            <div class="button login">
               <button type="submit"><span>Войти</span> <i class="fa fa-check"></i></button>
            </div>
         </div>
      </div>
   </form>
</body></fmt:bundle>
</html>
