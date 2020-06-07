<%
  session.invalidate();
  response.sendRedirect("admin-login.jsp?msg=Logout Successfully.");
%>
