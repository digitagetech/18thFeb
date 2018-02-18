
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Add Page</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/spa.css">
<style>
 $(document).ready(function(){
            $("#carsForm").validate();
        });
</style>
</head>
<body>
            <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>
<div class="container" >

    <div class="page-header">
        </br>
    </div>
    <div class="container">
    
    <div class="row" >
        <div class="col-md-6" >
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1primary" data-toggle="tab">Category</a></li>
                            <li><a href="#tab2primary" data-toggle="tab">Supplier</a></li>
                            <li><a href="#tab3primary" data-toggle="tab">Product</a></li>
                           
                        </ul>
                </div>
                
                <div class="panel-body">
                <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">
                        
                         <form  method="post"  action="<c:url value="/admin/save" />" class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <h4 class="input_title">Category Id</h4>
                <input class="form-control" type="number" name="cid"   required/></td>
                <h4 class="input_title">Category Name</h4>
                            <input class="form-control" type="text" name="name"  required/></td><br><br>
                <button class="btn btn-lg btn-primary" type="submit">Save</button>
                 <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
                
               </form>
                        </div>
                        <div class="tab-pane fade" id="tab2primary">
                        <form  method="post" action="<c:url value="/admin/saveSupplier" />" >
                <span id="reauth-email" class="reauth-email"></span>
                <h4 class="input_title">Supplier Id</h4>
                <input class="form-control" type="text" name="sid"   required/></td>
                 <h4 class="input_title">Supplier Name</h4>
                 <input class="form-control" type="text" name="supplierName"  required/></td><br><br>
                  
                <button class="btn btn-lg btn-primary" type="submit">Save</button>
                                 <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
                
               </form> 
                        </div>
                        <div class="tab-pane fade" id="tab3primary">
                        
                        
                        
              <form class="form-signin" action="<c:url value="/admin/saveProduct"/>"   method="post" enctype="multipart/form-data">
		
		<table align="center">
			<center><h4>Product Details</h4></center>
			
			
			<tr>
				<td class="input_title">Product Name</td>
				<td><input type="text" name="pName"  class="form-control" required/></td>
			</tr>
			<tr>
			<div class="form-group">
			<td>Select Category</td>
		
				<td><select  class="form-control" name="pCategory" required>
				
					<option value="">----Category---</option>
				
						<c:forEach items="${cat}" var="cate">
						<option  value="${cate.cid}"   required>${cate.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			</div>
			<tr>
			<div class="form-group" >
				<td>Select Supplier</td>
		
				<td><select class="form-control" name="pSupplier" required>
					<option value="">----Supplier---</option>
						
						<c:forEach items="${sat}" var="sate">
						<option value="${sate.sid}">${sate.supplierName}</option>
									                
						
						</c:forEach>
					</select>
				</td>
				</div>
			</tr>
			
			<tr >
				<td>Price</td>
				<td><input class="form-control" type="number" name="pPrice" required  /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input class="form-control"  type="text" name="pDescription" required /></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><input class="form-control" type="text" name="pQuantity" required/></td>
			</tr>
			
			<div class="fileinput fileinput-new" data-provides="fileinput">
				<tr>
				<td>Image</td>
				<td><input class="form-control" type="file" name="file" accept="image/*"/></td>
			</tr>
			</div>
			<br>
			<tr>
				<td colspan="2"><center>
						<input type="submit" class="btn btn-lg btn-primary"/>
						                 <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
						
					</center></td>
			</tr>
 
		</table>
	</form>
               
               
                        </div>
                        <div class="tab-pane fade" id="tab4primary">Primary 4</div>
                        <div class="tab-pane fade" id="tab5primary">Primary 5</div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

</div>

<br/>

<div><br/><br/><br/></div>

            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>