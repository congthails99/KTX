<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 0px solid gray;
}
 
header {
    color: white;
    background-color: white;
    clear: left;
    text-align: center;
}
footer{
    padding: 1em;
    color: white;
    background-color: green;
    clear: left;
    text-align: center;
}
 
nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}
 
nav ul {
    list-style-type: none;
    padding: 0;
}
    
nav ul a {
    text-decoration: none;
}
 
article {
    margin-left: 235px; /*chieu rong */
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
/**/
.navbar {
  overflow: hidden;
  background-color: gray;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: green;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
 
<div class="container">
 
<header>
   <img src="ktx/hnue.jpg"  height="350" width="1050px">
</header>
  <div class="dropdown">
      <a href="#"><img th:src="@{/ktx/${ktxlogo.png}}" height="49px" width="235px"></a>
      
  </div>
  <div class="navbar">
  <a href="#home">Trang chủ</a>
  <a href="#news">Tin tức</a>
  <div class="dropdown">
    <button class="dropbtn">Thông tin 
    </button>
    <div class="dropdown-content">
      <a href="#">Cán bộ</a>
      <a href="#">Sinh viên</a>
      <a href="#">Phòng ở</a>
    </div>
  </div>
    <div><a href="<%=request.getContextPath()%>/form/dangky.html">Đăng ký</a></div> 
    </div>
<br>
<nav>
  <ul>
    <li><a href="#">Trang chủ</a></li>
    <li><a href="#">Lập trình web</a></li>
    <li><a href="#">Thiết kế web</a></li>
  </ul>
  </nav>
<article>
  <h1>Trang chủ</h1>
  
</article>
 
<footer>Copyright &copy; 2020 Trương Công Thái</footer>
 
</div>
</body>
</html>

