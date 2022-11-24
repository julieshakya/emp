<%@ page import="java.util.List" %>
<%@ page import="rahul.*" %>
<%
int idd = Integer.parseInt(request.getParameter("id"));

if(idd == 0)
{
	%>
	<jsp:include page="index.jsp" />
	<%
		}
	else
	{
		

	employee em = empdao.search(idd);
	if(em == null)
	{
	%>
	<jsp:include page="index.jsp" />
	<h1>RECORD NOT FOUND</h1>
	<%
	
}
else
{
	

int id = em.getEID();
String name = em.getEName();
String doj = em.getDOJ();
String yoe = em.getYOE();
String des=em.getDesignation();





%>
<jsp:include page="nav.jsp" />
<html>
<body>
<table border="2">
<tr>
<th>EID</th>
<th>EName</th>
<th>DOJ</th>
<th>YOE</th>
<th>DESIGNATION</th>
</tr>
<tr>
<th><%=id %></th>
<th><%=name %></th>
<th><%=doj %></th>
<th><%=yoe %></th>
<th><%=des %></th>
</tr>
</table>
</body>
</html>

<%
}
}
%>