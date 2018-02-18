    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>


            <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
    <center><h3>Welcome to Category Add page</h3></center>
        <div class="card card-container">
        <h2 class='login_title text-center'>Login</h2>
        <hr>



<p>             <form action="">
                        <input type="text" name="txt" value="${param.txt}"/>
                        <button>FIND</button>
                    </form>
                    </p>
            <f:form modelAttribute="category" method="post"  action="save" class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <h4 class="input_title">Category Id</h4>
                <f:input path="cid" />
                 <h4 class="input_title">Category Name</h4>
                              <f:input path="name" />
                <button class="btn btn-lg btn-primary" type="submit">Login</button>
               </f:form>
                </div>
               
        
        </div><!-- /card-container -->
   <!-- /container -->
   
   
   
   
   
   
   
   <div class="container">
    <center><h3> Supplier Add page</h3></center>
        <div class="card card-container">
        <h2 class='login_title text-center'>Save</h2>
        <hr>

            <f:form modelAttribute="supplier" method="post"  action="saveSupplier" class="form-signin">
                <span id="reauth-email" class="reauth-email"></span>
                <h4 class="input_title">Supplier Id</h4>
                <f:input path="sid" />
                 <h4 class="input_title">Supplier Name</h4>
                              <f:input path="supplierName" />
                <button class="btn btn-lg btn-primary" type="submit">Login</button>
               </f:form> 
             <%--   <form  action="saveSupplier" method="post" class="form-signin">
                                <h4 class="input_title">Supplier Id</h4>
               <input type="text" name="sid">
                                <h4 class="input_title">Supplier Name</h4>
                              <input type="text" name="supplierName">
                               <button class="btn btn-lg btn-primary" type="submit">Save</button>
               
               
               </form> --%>
                </div>
               
        
        </div><!-- /card-container -->a
   
   
   
   
   
   
   
   
   
   
  
            <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>