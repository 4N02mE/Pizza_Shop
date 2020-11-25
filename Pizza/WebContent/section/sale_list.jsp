<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<h3>통합 매출 조회</h3>
  				
<table border="1" width="700" style="text-align: center;">
	<tr>
		<td>피자코드</td>
		<td>피자명</td>
		<td>단가</td>
	</tr>
	
	<%
	try
	{
	    Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con=DriverManager.getConnection(
	    "jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	    Statement select_stmt = con.createStatement();
	    String select_sale_query = 	"SELECT PCODE, PNAME, COST " +
									"FROM TBL_PIZZA_01 " +
									"ORDER BY PCODE";
	    
		ResultSet sale_list_rs = select_stmt.executeQuery(select_sale_query);
	    while(sale_list_rs.next()) {
	    %><tr><%
	    	%><td><%=sale_list_rs.getString("PCODE") %></td><%
	    	%><td><%=sale_list_rs.getString("PNAME") %></td><%
	       	%><td><%=sale_list_rs.getString("COST") %></td><%
	    %></tr><%
	    }
	      con.close();
	}
	catch(Exception e)
	{ 
	   System.out.println(e);
	}
	%>
</table>