<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to Our Application</h1>
            <p>Your gateway to an improved experience!</p>
        </header>

        <!-- Struts2 Form Example -->
       <%--  <section class="form-section">
            <h2>Sample Form Submission</h2>
            <s:form action="submitAction" method="post">
                <label for="name">Name:</label>
                <s:textfield name="name" id="name" />

                <label for="email">Email:</label>
                <s:textfield name="email" id="email" />

                <s:submit value="Submit" />
            </s:form>
        </section> --%>

        <!-- Placeholder for Custom Button or Navigation -->
        <%-- <section class="custom-buttons">
            <h2>Navigation</h2>
            <s:url var="dashboardLink" action="dashboard" />
            <a href="<s:property value='#dashboardLink'/>" class="button">Go to Dashboard</a>
        </section> --%>

        <footer>
            <p>&copy; this is footer.</p>
        </footer>
    </div>
</body>
</html>
