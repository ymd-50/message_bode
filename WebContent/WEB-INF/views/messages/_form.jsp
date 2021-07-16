<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容に誤りがあります<br>
        <c:forEach var="error" items="${errors}">
            <ul>
                <li>・<c:out value="${error}"></c:out></li>
            </ul>
        </c:forEach>
    </div>
</c:if>


<label for="title">タイトル</label>
<input type="text" name="title" value="${message.title}"/>
<br><br>

<label for="content">メッセージ</label>
<input type="text" name="content" value="${message.content}"/>
<br><br>

<input type="hidden" name="_token" value="${_token}"/>

<button type="submit">投稿</button>
