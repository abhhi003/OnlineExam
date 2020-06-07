<%@page import="java.sql.*"%>
<%
  String loginid = request.getParameter("loginid");
  String password = request.getParameter("password");
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","onlineexam","onlineexam");
  Statement st = con.createStatement();
  String sql = "select * from admin where loginid='"+loginid+"' and password='"+password+"'";
  ResultSet rs = st.executeQuery(sql);
  if(rs.next())
  {
    session.setAttribute("loginid",loginid);
    response.sendRedirect("admin-home.jsp");
  }
  else
  {
    response.sendRedirect("admin-login.jsp?msg=Invalid User ID/Password.");
  }
%>
