<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Student Details</title>
</head>
<body>
<%
 String regno = request.getParameter("regno");

 if (regno != null && !regno.isEmpty()) {
 Connection connection = null;
 try {
 // Establish database connection
 Class.forName("org.apache.derby.jdbc.ClientDriver");
 String url = "jdbc:derby://localhost:1527/JDBC;create=true";
 String username = "app";
 String password = "app";
 connection = DriverManager.getConnection(url, username, password);

 if (connection != null) {
 PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM student_marks WHERE reg = ?");
 preparedStatement.setString(1, regno);
 ResultSet resultSet = preparedStatement.executeQuery();
 out.println("<h2>Student Details for Registration Number: " + regno + "</h2>");
 if (resultSet.next()) {
 int subject1 = resultSet.getInt("subject1");
 int subject2 = resultSet.getInt("subject2");
 int subject3 = resultSet.getInt("subject3");
 int subject4 = resultSet.getInt("subject4");
 out.println("Subject 1: " + subject1+ " " +(subject1>40?"P" : "F")+"<br>");
 out.println("Subject 2: " + subject2 + " "+(subject1>40?"P" : "F")+"<br>");
 out.println("Subject 3: " + subject3 + " "+(subject1>40?"P" : "F")+"<br>");
 out.println("Subject 4: " + subject4 +" " +(subject1>40?"P" : "F")+"<br>");
 } else {
 out.println("Student not found for Registration Number: " + regno);
 }
 resultSet.close();
 preparedStatement.close();
 } else {
 out.println("Failed to connect to the database.");
 }
 } catch (Exception e) {
 e.printStackTrace();
 } finally {
 if (connection != null) {
 try {
 connection.close();
 } catch (SQLException e) {
 e.printStackTrace();
 }
 }
 }
 } else {
 out.println("<h2>Please enter a Registration Number.</h2>");
 }
 %>
</body>
</html>