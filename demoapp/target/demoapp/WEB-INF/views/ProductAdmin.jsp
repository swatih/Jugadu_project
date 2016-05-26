<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
 <html>
<head>
    <title>Admin Page</title>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>
</head>
<body>
<a href="<c:url value="/logout" />">Logout</a>
<h1>
    Add a Product
</h1>
 
<c:url var="addAction" value="/products/add" ></c:url>
 
<form:form action="${addAction}" commandName="product">
<table>
    <c:if test="${!empty product.name}">
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
            <form:label path="brand">
                <spring:message text="Brand"/>
            </form:label>
        </td>
        <td>
            <form:input path="brand" />
        </td>
               <td><form:errors path="brand" cssClass="error" cssStyle="color: #ff0000;"/></td> 
    </tr>
    
    
    <tr>
        <td>
            <form:label path="desc">
                <spring:message text="Description"/>
            </form:label>
        </td>
        <td>
            <form:input path="desc" />
        </td> 
               <td><form:errors path="desc" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td> 
               <td><form:errors path="price" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td> 
               <td><form:errors path="category" cssClass="error" cssStyle="color: #ff0000;"/></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
            </c:if>
        </td>
    </tr>
</table>  
</form:form>
<br>
<h3>Products List</h3>
<c:if test="${!empty listProducts}">
    <table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Name</th>
        <th width="120">Brand</th>
        <th width="120">Description</th>
        <th width="120">Price</th>
        <th width="120">Category</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <c:forEach items="${listProducts}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.brand}</td>
            <td>${product.desc}</td>
            <td>${product.price}</td>
            <td>${product.category}</td>
            <td><a href="<c:url value='/products/edit/${product.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/products/remove/${product.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if>
</body>
</html>