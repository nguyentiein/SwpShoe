<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Model.Orders" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.User" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Responsive Admin Dashboard | Korsat X Parmaga</title>
  <!-- ======= Styles ====== -->
  <link rel="stylesheet" href="assets/css/style01.css">
  <style>
    /* CSS styling goes here */
    .searchForm {
      margin: 20px;
    }
    .formGroup {
      margin-bottom: 10px;
    }
    .customButton {
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      border: none;
      cursor: pointer;
    }
    .orderList {
      margin: 20px;
    }
    .orderItem {
      margin-bottom: 10px;
    }
  </style>
</head>

<body>
<!-- =============== Navigation ================ -->
<div class="container">
  <div class="navigation">
    <ul>
      <li>
        <a href="#">
        <span class="icon">
            <ion-icon name="person-circle-outline"></ion-icon>
        </span>
          <span class="title">Admin</span>
        </a>
      </li>

      <li>
        <a href="statics">
                    <span class="icon">
                        <ion-icon name="home-outline"></ion-icon>
                    </span>
          <span class="title">Dashboard</span>
        </a>
      </li>

      <li>
        <a href="customers">
                    <span class="icon">
                        <ion-icon name="people-outline"></ion-icon>
                    </span>
          <span class="title">Quản lí khách hàng</span>
        </a>
      </li>



      <li>
        <a href="staff">
                    <span class="icon">
                        <ion-icon name="people-outline"></ion-icon>
                    </span>
          <span class="title">Quản lí Nhân Viên</span>
        </a>
      </li>



      <li>
        <a href="pages">
        <span class="icon">
            <ion-icon name="basket-outline"></ion-icon>
        </span>
          <span class="title">Quản lí đơn hàng</span>
        </a>
      </li>





      <li>
        <a href="payments">
                    <span class="icon">
                        <ion-icon name="bar-chart-outline"></ion-icon>
                    </span>
          <span class="title">Quản lí thống kê</span>
        </a>
      </li>




      <li>
        <a href="logout">
                    <span class="icon">
                        <ion-icon name="log-out-outline"></ion-icon>
                    </span>
          <span class="title">Sign Out</span>
        </a>
      </li>
    </ul>
  </div>


  <!-- ========================= Main ==================== -->
  <div class="main">
    <div class="details">
      <div class="recentOrders">
        <div class="cardHeader">
          <div class="searchForm">
            <form action="search1" method="post">
              <div class="formGroup">
                <label for="name">name</label>
                <input type="text" id="name" name="name">
              </div>

              <button type="submit" class="customButton">Search</button>
            </form>
          </div>
          <a href="AddUser.jsp" class="btn">Add User</a>
        </div>



        <% List<User> users = (List<User>) request.getAttribute("userList");
          if (users != null) { %>
        <table>
          <thead>
          <tr>
            <th>userid</th>
            <th>username</th>
            <th>PassWord</th>
            <th>email</th>
            <th>address</th>
            <th>phone_number</th>

          </tr>
          </thead>
          <tbody>
          <% for (User user : users) { %>
          <tr>

            <td><%= user.getId() %></td>
            <td><%= user.getUsername() %></td>
            <td><%= user.getPassword() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getAddress() %></td>
            <td><%= user.getPhone_number() %></td>


          </tr>
          <% } %>
          </tbody>
        </table>
        <% } %>

      </div>
    </div>
  </div>
</div>

<!-- =========== Scripts =========  -->
<script src="assets/js/main.js"></script>

<!-- ====== ionicons ======= -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>