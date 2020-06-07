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
          String msg = request.getParameter("msg");
          if(msg!=null)
          {
            out.println(msg);
          }
        %>
        <%
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
          Statement st = con.createStatement();
          String sql = "select * from students";
          ResultSet rs = st.executeQuery(sql);
        %>
          <table border="1" cellpadding="9" width="100%" cellspacing="0">
            <tr>
              <th>Email ID</th>
              <th>Name</th>
              <th>Mobile No.</th>
              <th>Address</th>
              <th>Action</th>
            </tr>
            <%
              while(rs.next())
              {
                String emailid = rs.getString("emailid");
            %>
              <tr>
                <td><%=rs.getString("emailid")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("mobileno")%></td>
                <td><%=rs.getString("address")%></td>
                <td><a href="delete-student.jsp?emailid=<%=emailid%>">Delete</a></td>
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
