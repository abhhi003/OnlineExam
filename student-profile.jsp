<%@page import="java.sql.*"%>
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
<%
  String emailid = (String)session.getAttribute("emailid");
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
  Statement st = con.createStatement();
  String sql = "select * from students where emailid='"+emailid+"'";
  ResultSet rs = st.executeQuery(sql);
  rs.next();
  String name = rs.getString("name");
  String mobileno = rs.getString("mobileno");
  String gender = rs.getString("gender");
  String dob = rs.getString("dob");
  String qualification = rs.getString("qualification");
  String address = rs.getString("address");
%>
  <br>
    <table cellpadding="9">
      <tr>
        <td>Name :</td>
        <td><%=name %></td>
      </tr>
      <tr>
        <td>Mobile No. :</td>
        <td><%=mobileno %></td>
      </tr>
      <tr>
        <td>Gender :</td>
        <td><%=gender %></td>
      </tr>
      <tr>
        <td>Date of birth :</td>
        <td><%=dob %></td>
      </tr>
      <tr>
        <td>Qualification :</td>
        <td><%=qualification %></td>
      </tr>
      <tr>
        <td>Address :</td>
        <td><%=address %></td>
      </tr>
    </table>
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
