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
        <%@page import="java.sql.*"%>
        <table border="1" cellpadding="7" cellspacing="0" width=100%>
            <tr>
              <td>Sl no.</td>
              <td>Question</td>
              <td>Option1</td>
              <td>Option2</td>
              <td>Option3</td>
              <td>Option4</td>
              <td>Answer</td>
              <td>Action</td>
            </tr>

        <%
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
          Statement st = con.createStatement();
          String sql = "select * from questions";
          ResultSet rs = st.executeQuery(sql);
          while (rs.next())
          {
            String qno = rs.getString("qno");
            String question = rs.getString("question");
            String option1 = rs.getString("option1");
            String option2 = rs.getString("option2");
            String option3 = rs.getString("option3");
            String option4 = rs.getString("option4");
            String answer = rs.getString("answer");
          %>
        <tr>
          <td><%=qno%></td>
          <td><%=question%></td>
          <td><%=option1%></td>
          <td><%=option2%></td>
          <td><%=option3%></td>
          <td><%=option4%></td>
          <td><%=answer%></td>
          <td><a href="delete-question.jsp?qno=<%=qno%>">Delete</a></td>
        </tr>
        <%
        }
        %>
        </table>
      </div>
      <div id="footer">
        &copy; Copyright 2019 <br>
      </div>
    </div>
  </body>
</html>
