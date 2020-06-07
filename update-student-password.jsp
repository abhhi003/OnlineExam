<%@page import="java.sql.*"%>
<%
  String emailid = (String)session.getAttribute("emailid");
  String cpassword = request.getParameter("cpassword");
  String npassword = request.getParameter("npassword");
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
  Statement st = con.createStatement();
  String sql = "select password from students where emailid='"+emailid+"' and password='"+cpassword+"'";
  ResultSet rs = st.executeQuery(sql);
  if(rs.next())
  {
    String sql1 = "update students set password='"+npassword+"' where emailid='"+emailid+"'";
    int count = st.executeUpdate(sql1);
    if (count>0)
    {
      response.sendRedirect("student-password.jsp?msg=Password Changed Successfully !");
    }
    else
    {
      response.sendRedirect("student-password.jsp?msg=Try Again !");
    }
  }
  else
  {
    response.sendRedirect("student-password.jsp?msg=Incorrect Password !");
  }
%>
