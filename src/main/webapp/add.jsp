<%@ page import="rahul.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String doj = request.getParameter("doj");
String yoe = request.getParameter("yoe");
String des = request.getParameter("des");

employee e = new employee(id , name,doj,yoe,des);

empdao.add(e);
%>
<jsp:include page="index.jsp" />
