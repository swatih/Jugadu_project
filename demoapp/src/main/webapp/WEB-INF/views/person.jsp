<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Person Page</title>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>
</head>

<body>
<h1>
    Register
</h1>
 
<c:url var="addAction" value="/person/add" ></c:url>
 
<form:form action="${addAction}" commandName="person">
<table>
    <c:if test="${!empty person.email}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
        <td><form:errors path="name" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="country">
                <spring:message text="Country"/>
            </form:label>
        </td>
        <td>
            <form:input path="country" />
        </td> 
        <td><form:errors path="country" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="email">
                <spring:message text="Email"/>
            </form:label>
        </td>
        <td>
            <form:input path="email" />
        </td> 
        <td><form:errors path="email" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="password">
                <spring:message text="password"/>
            </form:label>
        </td>
        <td>
            <form:password path="password" />
        </td>
        <td><form:errors path="password" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr><input type="submit" value="<spring:message text="Register"/>" />
         </table>  
</form:form>
</body>
</html>