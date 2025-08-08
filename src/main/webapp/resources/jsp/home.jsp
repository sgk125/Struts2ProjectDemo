<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
    <h1>Welcome to Employee Management system Struts2 demo with spring!</h1>
    
    <h2>Project Details</h2>
    <ul>
        <li>Framework: Struts2 with Spring Annotations</li>
        <li>Java Version: 8</li>
        <li>MySQL Database Version: 5</li>
        <li>Tomcat Version: 9</li>
    </ul>
    
    <a href="${pageContext.request.contextPath}/employeeList"
			class="btn btn-primary">Employee list</a>
</body>
</html>
