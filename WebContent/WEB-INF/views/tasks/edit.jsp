<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id : ${task.id} のタスク編集ページ</h2>
        <form method="POST" action="${pageContext.request.contextPath}/update">
            <c:import url="_form.jsp">
            </c:import>
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="#" onclick="confirmDestoroy();">このメッセージを削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}"/>
        </form>
        <script>
        function confirmDestoroy(){
            if(confirm("本当に削除して宜しいですか？")){
                document.forms[1].submit();
            }
        }
        </script>
    </c:param>
</c:import>