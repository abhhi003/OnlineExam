<html>
  <head>
    <title>Online Exam</title>
    <link rel="stylesheet" href="master.css" type="text/css"/>
  </head>
  <body>
    <div id="container">
      <div id="header">
        <jsp:include page="header.jsp"/>
      </div>
      
      <div id="main">
        <center><h2>Admin Login</h2></center>
        <hr>
          <%
            String msg = request.getParameter("msg");
            if(msg!=null)
            {
              out.println(msg);
            }
          %>
          <form action="check-admin.jsp" method="post">
            <table align="center" cellpadding="7">
              <tr>
                <td>Login ID :</td>
                <td><input type="text" name="loginid"></td>
              </tr>
              <tr>
                <td>Password :</td>
                <td><input type="password" name="password"></td>
              </tr>
              <tr>
                <td></td>
                <td><input type="submit" value="Sign In"></td>
              </tr>
            </table>
          </form>
      </div>
      <div id="footer">
        &copy; Copyright 2019 <br>
      </div>
    </div>
  </body>
</html>
