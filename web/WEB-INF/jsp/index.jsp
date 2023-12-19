<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <style>
            <%@include file="/resources/css/index.css" %>
        </style>
    </head>
    <body>
    <form action="LoginServlet" method="post">
       <div class="materialContainer">
          <div class="box">
             <div class="title"><fmt:message key="page.title" /></div>
             <br>
              <err:error />
             <div class="input">
                <input type="text" name="login" id="login" >
                <label for="login"><fmt:message key="login.label" /></label>
                <span class="spin"></span>
             </div>
             <div class="input">
                <input type="password" name="password" id="password" >
                <label for="password"><fmt:message key="password.label" /></label>
                <span class="spin"></span>
             </div>
             <div class="button login">
                <button type="submit"><span><fmt:message key="login.button" /></span> <i class="fa fa-check"></i></button>
             </div>
          </div>
       </div>
    </form>
    <table>
       <tr>
          <td>                                                                       
             <form action="LocalServlet"> 
                <div class="form-group form-button">
                   <input type="hidden" name="locale" value="en"/>
                   <input class="form-submit"  type="submit" value='<fmt:message key="en" />'/>
                </div>
             </form>
          </td>
          <td>
             <form action="LocalServlet"> 
                <div class="form-group form-button">
                   <input type="hidden" name="locale" value="ru"/>
                   <input class="form-submit"  type="submit" name="locale" value='<fmt:message key="ru" />'/>
                </div>
             </form>
          </td>
       </tr>
    </table>
    </body></fmt:bundle>
</html>
