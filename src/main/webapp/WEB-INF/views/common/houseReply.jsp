<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${houseReply}" var="dto" varStatus="i">

<tr class="bg">
<td>아이디:${dto.id}</td>
<td id ="up${dto.replyNum}">${dto.contents}</td>

<c:if test="${member.id eq dto.id}">
			<td><button class="update" type="button" data-index="${dto.replyNum}">Update</button></td>
			<td><button class="del" type="button" data-num="${dto.replyNum}">Delete</button></td>
</c:if>

</tr>
</c:forEach>