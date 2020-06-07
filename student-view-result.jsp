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
  String sql = "select * from result where emailid='"+emailid+"'";
  ResultSet rs = st.executeQuery(sql);
%>
  <table border="1" cellpadding="9" width="100%" cellspacing="0">
    <tr>
      <th>Sl No.</th>
      <th>Mark</th>
      <th>Total</th>
    </tr>
    <%
      int count = 0;
      while(rs.next())
      {
        count++;
    %>
      <tr>
        <td>Test<%=count %></td>
        <td><%=rs.getString("correct")%></td>
        <td><%=rs.getString("total_mark")%></td>
      </tr>
      <%
      }
      con.close();
      %>
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
