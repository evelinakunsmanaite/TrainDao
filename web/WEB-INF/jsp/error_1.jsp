<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
     <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
     <fmt:bundle basename="com.localization.messages.msg">
    <title> <fmt:message key="error.title" /></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">
  
              <style>
                <%@include file="/resources/css/error.css" %>
            </style>
</head>
<body class="loading">
    <h1>500</h1>
    <h2><fmt:message key="error.dataMissing" /></h2>
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
        <form action="page" method="post">
            <input type="hidden" name="page" value="toUser">
            <input type="submit" value="<fmt:message key="button.toHomepage" />">
        </form>
    </div>
</body></fmt:bundle>
</html>
