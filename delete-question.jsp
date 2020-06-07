<%@page import="java.sql.*"%>
<%
  String qno = request.getParameter("qno");

  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
  Statement st = con.createStatement();
  String sql = "delete from questions where qno='"+qno+"'";
  int count = st.executeUpdate(sql);
  if (count > 0)
  {
    response.sendRedirect("extract-question.jsp?msg=Qusetion Deleted Successfully !");
  }
  con.close();
%>
