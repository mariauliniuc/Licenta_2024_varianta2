<%
@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autentificare.aspx.cs" Inherits="Store.Autentificare" %>

<!DOCTYPE html>
<html>
<head>
  <title>Formular de autentificare</title>
  <style>
    .form-group {
      margin-bottom: 15px;
    }

    label {
      display: block;
    }

    input[type="email"],
    input[type="password"],
    select {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button[type="submit"] {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <form action="process_login.php" method="POST">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="password">Parolă:</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <label for="account-type">Tip cont:</label>
      <select id="account-type" name="account-type" required>
        <option value="">Alegeți tipul de cont</option>
        <option value="cumparator">Cumparator</option>
        <option value="administrator">Administrator</option>
          <option value="vanzator">Vanzator</option>
          
      </select>
    </div>
    <button type="submit">Logare</button>
  </form>
</body>
</html>