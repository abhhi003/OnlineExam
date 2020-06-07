<%
  String emailid1 = (String)session.getAttribute("emailid");
  if (emailid1==null)
  {
    response.sendRedirect("student-login.jsp?msg=Login Again");
  }
  else
  {
%>
<html>
  <head>
    <title>Online Exam</title>
    <link rel="stylesheet" href="master.css" type="text/css"/>
    <script language="javascript" src="md5.js"></script>
    <script language="javascript">
      function convert()
      {
        password1 = document.getElementById("password1").value;
        password1 = md5(password1);
        document.getElementById("password1").value =password1;

        password2 = document.getElementById("password2").value;
        password2 = md5(password2);
        document.getElementById("password2").value =password2;
      }
    </script>
  </head>
  <body>
    <div id="container">
      <div id="header">
        <jsp:include page="student-header.jsp"/>
      </div>
      <div id="menu">
        <jsp:include page="student-menu.jsp"/>
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
          <form action="update-student-password.jsp" method="post" onsubmit="convert()">
            <table cellpadding="9" align="center">
              <tr>
                <td>Current Password :</td>
                <td><input type="password" name="cpassword" id="password1"></td>
              </tr>
              <tr>
                <td>New Password :</td>
                <td><input type="password" name="npassword" id="password2"></td>
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
<%
}
%>
