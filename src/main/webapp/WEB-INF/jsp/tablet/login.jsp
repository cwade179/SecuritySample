<!DOCTYPE html>
<%@include file="taglib.jsp" %>
<html>
	<head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Login</title>
		<link  href="${rootURL}resources/css/jquery.mobile-1.4.5-min.css"  rel="stylesheet" type="text/css" />
        <link  href="${rootURL}resources/css/jquery.mobile.icons-1.4.5-min.css" rel="stylesheet" />
	    <link  href="${rootURL}resources/css/jquery.mobile.structure-1.4.5-min.css" rel="stylesheet" />
	    <link  href="${rootURL}resources/css/jquery.mobile.theme-1.4.5-min.css" rel="stylesheet" />	    
		<script src="${rootURL}resources/js/jquery-1.11.12-min.js" type="text/javascript"></script>
		<script src="${rootURL}resources/js/jquery.mobile-1.11.12-min.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="col-md-6 col-md-offset-2">
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
				Invalid UserName and Password.
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
				You have been logged out.
				</div>
			</c:if>
		</div>
		<div data-role="page">
		  <div data-role="header">
		  <h1>Text Inputs</h1>
		  </div>
		
		  <div data-role="main" class="ui-content">
  		  	<form:form id="loginForm" method="post" action="${rootURL}login" modelAttribute="user" role="form" cssStyle="width: 800px; margin: 0 auto;">
			  <input type="hidden" text="${_csrf.parameterName}" value="${_csrf.token}" />
		      <div class="ui-field-contain">
		        <label for="username">User Name</label><input type="text" id="username" name="username" placeholder="UserName" />       
		        <label for="password">User Name</label><input type="password" id="password" name="password" placeholder="Password" />       
		      </div>
		      <input type="submit" data-inline="true" value="Submit">
		  	</form:form>
		  </div>
		</div>		
<%--		
		<div class="row">
			<div class="col-md-6 col-md-offset-2">
				<h2>User Login Form</h2>
				<form:form id="loginForm" method="post" action="${rootURL}login" modelAttribute="user" class="form-horizontal" role="form" cssStyle="width: 800px; margin: 0 auto;">
					<input type="hidden" text="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">UserName*</label>
						<div class="col-sm-4">
							<input type="text" id="username" name="username" class="form-control" placeholder="UserName" />
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">Password*</label>
						<div class="col-sm-4">
							<input type="password" id="password" name="password" class="form-control" placeholder="Password" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<input type="submit" class="btn btn-primary" value="Login">
						</div>
					</div>
				</form:form>
			</div>
		</div>
--%>		
	</body>
</html>