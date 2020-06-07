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
        <center><h2>Student Registration</h2></center>
        <hr>
          <%
            String msg = request.getParameter("msg");
            if(msg!=null)
            {
              out.println(msg);
            }
          %>
          <form action="insert-student.jsp" method="post" onsubmit="convert()">
            <table cellpadding="7" align="center">
              <tr>
                <td>Name :</td>
                <td><input type="text" name="name"></td>
              </tr>
              <tr>
                <td>Email ID :</td>
                <td><input type="text" name="emailid"></td>
              </tr>
              <tr>
                <td>Password :</td>
                <td><input type="password" name="password" id="password" required></td>
              </tr>
              <tr>
                <td>Mobile No. :</td>
                <td><input type="text" name="mobileno"></td>
              </tr>
              <tr>
                <td>Gender :</td>
                <td><input type="radio" name="gender" value="Male">Male
                  <input type="radio" name="gender" value="Female">Female
                </td>
              </tr>
              <tr>
                <td>D.O.B :</td>
                <td><input type="date" name="dob"></td>
              </tr>
              <tr>
                <td>Qualification :</td>
                <td><select name="qualification">
                  <option>Select</option>
                  <option>PhD</option>
                  <option>UG</option>
                  <option>PG</option>
                  <option>+2</option>
                  <option>10th</option>
                </select>
                </td>
              </tr>
              <tr>
                <td>Address :</td>
                <td><textarea name="address"></textarea></td>
              </tr>
              <tr>
                <td></td>
                <td><input type="submit" value="Register">
                <input type="reset" value="Cancel"></td>
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
