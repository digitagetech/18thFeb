<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
            <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
<div class="container" >


<%-- 

   <f:form  action="productUpdated"  modelAttribute="pro"  method="post"   enctype="multipart/form-data">
		<table align="center">
			
			
			<tr>
				<td>Product Name</td>
				<td><f:input path="name"  /></td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td><f:input path="name"  /></td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td><f:input path="name"  /></td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td><f:input path="name"  /></td>
			</tr>
			
			<tr>
			<td>Select Category</td>
		
				<td><f:select path="category">
						<f:option value="0" label="------Select----" />
						
					    <f:options items="${clist}" itemLabel="name"  itemValue="cid"/> 
					
					
					</f:select>
				</td>
				</tr>
			<tr>
				<td>Select Supplier</td>
		
				<td><f:select path="supplier">
						<f:option value="0" label="------Select----" />
						
					    <f:options items="${slist}" itemLabel="supplierName"  itemValue="sid"/> 
					
					
					</f:select>
				</td>
			</tr>
		
			<tr>
				<td colspan="2"><center>
						<input type="submit" />
					</center></td>
			</tr>

		</table>
		
	</f:form>
 --%>
 
 
 
 
 
             
                     <c:url value="http://localhost:3333/GroceryAppliation/productUpdate" var="prr"></c:url>   
              <form action="productUpdate"   method="post" enctype="multipart/form-data" >
		
		<table align="center">
			<tr>
				<td colspan="2"><center>Product Details</center></td>
			</tr>
			<tr>
			<td><input type="hidden" name="pid"  value="${pro.id}"/></td>
			</tr>
			
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="pName" value="${pro.name}" required/></td>
			</tr>
			<tr>
			<td>Select Category</td>
		
				<td><select name="pCategory" >
				<option value="0">----Category---</option>
				
						<c:forEach items="${clist}" var="cate">
						<option value="${cate.cid}">${cate.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>Select Supplier</td>
		
				<td><select name="pSupplier">
					<option value="0">----Supplier---</option>
						
						<c:forEach items="${slist}" var="sate">
						<option value="${sate.sid}">${sate.supplierName}</option>
									                
						
						</c:forEach>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Price</td>
				<td><input  type="number" name="pPrice"  value="${pro.price}" required/></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input  type="text" name="pDescription"  value="${pro.description}" required/></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input  type="text" name="pQuantity" value="${pro.stock}" required/></td>
			</tr>
			
			
				<tr>
				<td>Image</td>
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td colspan="2"><center>
						<input type="submit" />
					</center></td>
			</tr>
 
		</table>
	</form>
               
</div>



<br/>
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>
  