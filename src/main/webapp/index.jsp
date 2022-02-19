<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>

<%
	if (request.getParameter("btnLogOut") != null){
		session.removeAttribute("authenticatedUser");
		session.removeAttribute("authenticated");
		
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <%@include file="WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <%@include file="/WEB-INF/jspf/navigation.jspf" %>
        <div class="centered">
            <h1 class="centered-content">Super Awesome Home Page</h1>
            <form method="POST">
                <input 
                    type="submit" 
                    name="btnLogOut" 
                    value="Log out" 
                    class="btn btn-primary"/>  
            </form>
        </div>       
    </body>
    <%@include file="/WEB-INF/jspf/footer.jspf" %>
</html>
