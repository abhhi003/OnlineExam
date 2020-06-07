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
        student home....
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
