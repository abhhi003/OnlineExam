<%@page import="java.sql.*"%>
<%
  String emailid = request.getParameter("emailid");

  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
  Statement st = con.createStatement();
  String sql = "delete from students where emailid='"+emailid+"'";
  int count = st.executeUpdate(sql);
  if (count > 0)
  {
    response.sendRedirect("manage-student.jsp?msg=Student Removed Successfully !");
  }
  con.close();
%>
