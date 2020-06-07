<html>
  <head>
    <title>Online Exam</title>
    <link rel="stylesheet" href="master.css" type="text/css"/>
  </head>
  <body>
    <div id="container">
      <div id="header">
        <jsp:include page="admin-header.jsp"/>
      </div>
      <div id="menu">
        <jsp:include page="admin-menu.jsp"/>
      </div>
      <div id="main">
        <center><h3>Change Password</h3></center>
        <hr>
          <%
            String msg = request.getParameter("msg");
            if(msg!=null)
            {
              out.println(msg);
            }
          %>
          <form action="update-admin-password.jsp" method="post">
            <table cellpadding="9" align="center">
              <tr>
                <td>Current Password :</td>
                <td><input type="password" name="cpassword"></td>
              </tr>
              <tr>
                <td>New Password :</td>
                <td><input type="password" name="npassword"></td>
              </tr>
              <tr>
                <td></td>
                <td><input type="submit" value="Submit"></td>
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
