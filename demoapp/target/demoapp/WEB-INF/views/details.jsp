<%@ include file="header.jsp" %>
<div class="container" >
<div style="padding-top:40px;"></div>
<p>
Product Details

<%
//String s=session.getAttribute("userId").toString();
String s1=new String();

s1=request.getParameter("name");;
String s2=new String();
s2=request.getParameter("desc");;
String s3=new String();
s3=request.getParameter("id");;
String s4=new String();
s4=request.getParameter("brand");;
String s5=new String();
s5=request.getParameter("price");;
out.println(s1+"  "+s2+" "+s3+" "+s4+" "+s5);

%>

 </p>
</div>
<%@ include file="footer.jsp" %>