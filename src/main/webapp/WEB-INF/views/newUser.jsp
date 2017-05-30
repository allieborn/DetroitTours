<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New User</title>
</head>
<body>

<h2>New Customer Registration</h2>

<form method="POST" action="/successfullyRegistered" <%--onsubmit="return validateForm()"--%>>

    <table>
        Enter a username of your choice:<br>
        <input type="text" name="userName">
        <br>
        Enter your email:<br>
        <input type="text" name="email">
        <br>
        Choose a password:<br>
        <input type="text" name="password">
        <br>
        Enter an address that you'd like to save as a home address:<br>
        <input type="text" name="homeAddress">
        <br>
    </table>

    <table>
        <td colspan="2"></td>
        <td>

            <input type="submit" value="Submit"/>
        </td>
        </tr>
    </table>
</form>

<%--<script>--%>

    <%--function validateForm() {--%>
        <%--var name = document.forms["customerInfo"]["name"].value;--%>
        <%--var email = document.forms["customerInfo"]["email"].value;--%>

        <%--if (name == ""){--%>
            <%--alert ("You must enter your name in order to register.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (email == ""){--%>
            <%--alert ("You must enter an email address.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (!email.includes('@')){--%>
            <%--alert ("hmmm...looks like you didn't enter a valid email address.");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (name.length < 2 || email.length < 2){--%>
            <%--alert ("Input must be longer than 2 characters");--%>
            <%--return false;--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>


</body>
</html>
