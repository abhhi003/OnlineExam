
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
          window.history.forward();
        }
      </script>
      <meta http-equiv="refresh" content="1;url=student-login.jsp?msg=Logout Successfully !">
  </head>
  <body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
    <%
      session.invalidate();
      //response.sendRedirect("student-login.jsp?msg=Logout Successfully.");
    %>
  </body>
</html>
