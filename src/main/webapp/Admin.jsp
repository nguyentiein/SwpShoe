<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 6/23/2023
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="assets/css/style01.css">
</head>
<body>
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
        <div class="topbar">
            <div class="toggle">
                <ion-icon name="menu-outline"></ion-icon>
            </div>


        </div>

        <!-- ======================= Cards ================== -->
        <div class="cardBox">


            <div class="card">
                <div>
                    <div class="numbers"><%= request.getAttribute("totalcatergory") %></div>
                    <div class="cardName">Tổng Sản Phẩm</div>
                </div>

                <div class="iconBx">
                    <ion-icon name="cart-outline"></ion-icon>
                </div>
            </div>

            <div class="card">
                <div>
                    <div class="numbers"><%= request.getAttribute("totalproductfeedback") %></div>
                    <div class="cardName">Bình luận</div>
                </div>

                <div class="iconBx">
                    <ion-icon name="chatbubbles-outline"></ion-icon>
                </div>
            </div>

            <div class="card">
                <div>
                    <div class="numbers"><%= request.getAttribute("total") %></div>
                    <div class="cardName">Doanh thu</div>
                </div>

                <div class="iconBx">
                    <ion-icon name="cash-outline"></ion-icon>
                </div>
            </div>
        </div>


    </div>

    <!-- ================= New Customers ================ -->

</div>
</div>
</div>
<script src="assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- ====== ionicons ======= -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="assets/js/main.js"></script>

<!-- ====== ionicons ======= -->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>