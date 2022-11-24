<%@ include file="nav.jsp" %>
<%@ page import="rahul.*" %>
<%@ page import="java.util.List" %>

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
<%
	List<employee> ll = empdao.show();
int len = ll.size();
for(int i=0;i<len;i++)
{
%>
	<tr>
<th><%=ll.get(i).getEID() %></th>
<th><%=ll.get(i).getEName() %></th>
<th><%=ll.get(i).getDOJ() %></th>
<th><%=ll.get(i).getYOE() %></th>
<th><%=ll.get(i).getDesignation() %></th>
</tr>
	
	<%
	
}
%>
</table>

</body>
</html>