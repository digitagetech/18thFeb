<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="resources/registration.css">

<style>
.err {
	color: red;
}

.err_bdr {
	border: 1px solid red;
}

.bdr {
	border: 1px solid gray;
}
</style>
</head>
<body>
            <jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>






	<div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<f:form modelAttribute="user" action="saveRegister" method="post">
					<div class="col-sm-12">

						
		<f:errors path="id" cssClass="err" /><br>

						<div class="form-group">

							<label>Email</label>
							<br>
							<f:input placeholder="MailId.." path="id"
								class="form-control"></f:input>
						</div>


						<div class="form-group">
												<f:errors path="name" cssClass="err" /><br>
						
							<label>Name</label>
							<f:input placeholder="Name.." path="name"
								class="form-control"></f:input>
						</div>

						<div class="form-group">
						<f:errors path="password" cssClass="err" /><br>

							<label> Password</label>
							<f:password  placeholder="Enter Password.." path="password"
								class="form-control"/>
						
						</div>

						<div class="form-group">
												<f:errors path="address" cssClass="err" /><br>
						
							<label>Address</label>
							<f:textarea placeholder="Enter Address Here.." rows="3"
								path="address" class="form-control"></f:textarea>
						</div>


						<div class="form-group">
												<f:errors path="phone" cssClass="err" /><br>
						
							<label>Phone Number</label>
							<f:input placeholder="Enter Phone Number Here.." path="phone"
								class="form-control"></f:input>
						</div>

						<button type="submit" class="btn btn-lg btn-info">Submit</button>
						<button type="reset" class="btn btn-lg btn-info">Cancel</button>
					</div>
				</f:form>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>




</body>
</html>