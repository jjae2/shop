<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/house.css" rel="styleSheet" />
<c:import url="../template/header_css.jsp"></c:import>
<style type="text/css">
         h1{
            text-align: center;
            font-size: 18px;
        }
    table.type09 {
      border-collapse: collapse;
      text-align: left;
      line-height: 1.5;
      margin: 0 auto;
    
    }
    table.type09 thead th {
      padding: 10px;
      font-weight: bold;
      vertical-align: top;
      color: #369;
      border-bottom: 3px solid #036;
    }
    table.type09 tbody th {
      width: 150px;
      padding: 10px;
      font-weight: bold;
      vertical-align: top;
      border-bottom: 1px solid #ccc;
      background: #f3f6f7;
    }
    table.type09 td {
      width: 350px;
      padding: 10px;
      vertical-align: top;
      border-bottom: 1px solid #ccc;
    }
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>스크랩 북</h1>
	
<c:forEach items="${scrap}" var="s" varStatus="i">
<table class="type09">
  <thead>
  <tr>
    <th scope="cols">상품 번호</th>
    <th scope="cols">상품 이름</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <th scope="row">${s.product_num}</th>
    <td><a href="../product/detail?product_num=${s.product_num}">${s.product_name}</a></td>
  </tr>
  </tbody>
</table>
</c:forEach>

</body>
</html>