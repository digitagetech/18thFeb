<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link
href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-inverse">


  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home">Electronics Shop</a>
    </div>
    <ul class="nav navbar-nav">
                    <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
    
      <li class="active"><a href="${contextRoot}/home">Home</a></li>
      
       <%-- <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set> --%>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach var="catVal" items="${catList}">
                          <li><a href="${contextRoot}/productCustList?cid=${catVal.cid}">${catVal.name}</a></li>
                     </c:forEach>
        </ul>
      </li>
      <li><a href="<c:url value='/admin/Product'/>">ADD</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
    <c:if test="${pageContext.request.userPrincipal.name== null}">
      <li>
      <a href="${contextRoot}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li>
      <a href="${contextRoot}/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
          </c:if>
           <c:if test="${pageContext.request.userPrincipal.name!= null}">
    
    <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
    <li><a href="<c:url value="/logout" />">Logout</a></li>
</c:if>
       
                            
                          
    </ul>
  </div>
</nav>

</body>
</html>
