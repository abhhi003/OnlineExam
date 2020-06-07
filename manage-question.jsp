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
        <center><h3>Add Qusetions</h3></center>
        <hr>
        <%
          String msg = request.getParameter("msg");
          if(msg!=null)
          {
            out.println(msg);
          }
        %>
        <form action="insert-question1.jsp" method="post">
          <table cellpadding="7">
            <tr>
              <td>Question No. :</td>
              <td><input type="text" name="qno"></td>
            </tr>
            <tr>
              <td>Question :</td>
              <td><textarea name="question"></textarea></td>
            </tr>
            <tr>
              <td>Option1 :</td>
              <td><input type="text" name="option1"></td>
            </tr>
            <tr>
              <td>Option2 :</td>
              <td><input type="text" name="option2"></td>
            </tr>
            <tr>
              <td>Option3 :</td>
              <td><input type="text" name="option3"></td>
            </tr>
            <tr>
              <td>Option4 :</td>
              <td><input type="text" name="option4"></td>
            </tr>
            <tr>
              <td>Answer :</td>
              <td>
                <select name="answer">
                  <option>Select</option>
                  <option >Option1</option>
                  <option >Option2</option>
                  <option >Option3</option>
                  <option >Option4</option>
                </select>
              </td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" value="Submit"></td>
            </tr>
          </table>
        </form>
        <a href="extract-question.jsp">View Questions</a>
      </div>
      <div id="footer">
        &copy; Copyright 2019 <br>
      </div>
    </div>
  </body>
</html>
