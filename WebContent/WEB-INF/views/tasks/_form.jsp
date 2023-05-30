<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="task_content">タスク内容</label>
<br/>
<%-- value=はNewServletで格納したcontentの初期値を格納している --%>
<input type="text" name="content" id="content" value="${task.content}"/>
<br/><br/>

<input type="hidden" name="_token" value="${_token}">
<button type="submit">投稿</button>
