<table>
  <tr>
    <td width="150">
      <img src="logo.png" alt="logo" width="100" height="80">
    </td>
    <td width="600"><center><h1 style="border:solid">Online Exam</h1></center></td>
    <td>
      <%
        String loginid = (String)session.getAttribute("loginid");
      %>
      Welcome <strong><%= loginid %></strong>
    </td>
  </tr>
</table>
