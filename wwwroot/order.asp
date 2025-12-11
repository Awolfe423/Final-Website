<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Bike Shop | Home</title>
  <link rel="stylesheet" href="style.css" />
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
  <img src="Website Background.jpg" height= 400 width= 1700 alt="website background">

  <!-- Header & Navigation -->
  <header>
    <nav>
      <a href="index.html">Home</a>
      <a href="bikes.html">Bikes</a>
      <a href="order.html">Order</a>
      <a href="contact.html">Contact</a>
    </nav>
  </header>
  Thank You for your Order
  <%
name = Request.QueryString("name")
bikeType= Request.QueryString("bikeType")
quantity= Request.QueryString("quantity")
address= Request.QueryString("address")

sql="insert into bikeTable (name,bikeType,quantity,address) values ('"&name&"', '"&bikeType&"', "&quantity&", '"&address&"')"
connString = "Driver={SQL Server};Server=localhost;Database=BikeSHOP;UID=DAWGS;PWD=BMIS2025!!!;"
Set conn = Server.CreateObject("ADODB.Connection")
On Error Resume Next
conn.Open connString
conn.Execute sql
If Err.Number <> 0 Then
Response.Write("Error: " & Err.Description)
Err.Clear
Else
Response.Write("")
End If

conn.Close
%>