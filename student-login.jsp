<html>
  <head>
    <title>Online Exam</title>
    <link rel="stylesheet" href="master.css" type="text/css"/>
    <script language="javascript" src="md5.js"></script>
    <script language="javascript">
      function convert()
      {
        password = document.getElementById("password").value;
        password = md5(password);
        document.getElementById("password").value =password;
      }
    </script>
  </head>
  <body>
    <div id="container">
      <div id="header">
        <jsp:include page="header.jsp"/>
      </div>
      <div id="menu">
        <jsp:include page="menu.jsp"/>
      </div>
      <div id="main">
        <center><h2>Student Login</h2></center>
        <hr>
          <%
            String msg = request.getParameter("msg");
            if(msg!=null)
            {
              out.println(msg);
            }
          %>
          <form action="check-student.jsp" method="post" onsubmit="convert()">
            <table align="center" cellpadding="7">
              <tr>
                <td>Email ID :</td>
                <td><input type="text" name="emailid"></td>
              </tr>
              <tr>
                <td>Password :</td>
                <td><input type="password" name="password" id="password"></td>
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
