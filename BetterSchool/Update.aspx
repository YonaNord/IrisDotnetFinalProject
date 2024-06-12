﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="BetterSchool.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BetterSchool - Update</title>
    <link rel="stylesheet" type="text/css" href="css/Global.css" />
    <link rel="stylesheet" type="text/css" href="css/Update.css" />
    <link rel="icon" type="image/png" href="images/logo.png" />
    <script src="js/Global.js"></script>
    <script src="js/Update.js"></script>
</head>
<body>
    <%=navbar %>
    <div id="container">
        <%=title %>
        <form method="post" class="centered" action="Update.aspx">
            <div id="form">
                <h1>Update Profile</h1>
                <div class="parallel">
                    <div class="perpendicular">
                        <label>First Name:</label>
                        <input type="text" name="fname" value="<%=fname %>" />
                    </div>
                    <div class="perpendicular">
                        <label>Last Name:</label>
                        <input type="text" name="lname" value="<%=lname %>" />
                    </div>
                </div>
                <br />
                <div class="parallel">
                    <div class="perpendicular">
                        <label>Password:</label>
                        <input type="password" name="password" placeholder="New Password..." />  
                    </div>
                    <div class="perpendicular">
                        <label>New Class:</label>
                        <div id="myMultiselect" class="multiselect">
                            <div id="mySelectLabel" class="selectBox" onclick="toggleCheckboxArea()">
                                <select class="form-select">
                                  <option>Placeholder</option>
                                </select>
                                <div class="overSelect"></div>
                            </div>
                            <div id="mySelectOptions">
                                <%=classes %>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="parallel">
                  <div class="perpendicular">
                      <label>Mashov ID:</label>
                      <input type="text" name="mashovId" <%=(mashovId.Length > 0) ? $"value=\"{mashovId}\"" : "placeholder=\"Type Here (Optional)...\"" %>" />
                  </div>
                  <div class="perpendicular">
                      <label>Mashov Password:</label>
                      <input type="password" name="mashovPassword" placeholder="<%=(mashovPassword.Length > 0) ? "New Mashov Password (Optional)..." : "Type Here (Optional)..." %>" />  
                  </div>
                </div>
                <br />
                <div class="updateContainer">
                    <input class="updateButton" type="submit" name="submit" value="Update"/>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
