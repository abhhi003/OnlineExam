<%@page import="java.sql.*"%>
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
        <%
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
          Statement st = con.createStatement();
          String sql = "select * from result";
          ResultSet rs = st.executeQuery(sql);
        %>
          <table border="1" cellpadding="9" width="100%" cellspacing="0">
            <tr>
              <th>Email ID</th>
              <th>Mark</th>
              <th>Total</th>
            </tr>
            <%
              while(rs.next())
              {
            %>
              <tr>
                <td><%=rs.getString("emailid")%></td>
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
