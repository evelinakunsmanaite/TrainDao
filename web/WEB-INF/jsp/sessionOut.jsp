<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
             <style>
                <%@include file="/resources/css/error.css" %>
            </style>
        </head>
        <body align="center">
             <section class="error">
                <div class="error__content">
                    <div class="error__message message">
                   
            <h1 class="message__title" style='color:red; '><fmt:message key="sessionOut" /></h1>
             </div>
                    <div class="center">
            <form action="page" method="post">
                <input type="hidden" name="page" value="toLogin">
                <input type="submit" value="<fmt:message key="toHomepage" />">
            </form>        </div>
        </body>
    </fmt:bundle>
</html>
