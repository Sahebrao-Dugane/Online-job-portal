<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin'}"> 
<c:redirect url="Login.jsp"></c:redirect>
</c:if>
<%@include file="all_component/navbar.jsp"%>
<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">
<div class="text-center text-success">
<i class="fas fa-user-friends fa-3x"></i>


<c:if test="${not empty succMsg}">
<div class="alert alert-success" role="alert">${succMsg }</div>
<c:remove var="succMsg"/>
</c:if> 

<h5>Add Jobs</h5>
</div>
<form action="addjob" method="post">
<div class="form-group">
<label>Enter Titile</label> <input type="text" name="title"
required class="form-control">
</div>
<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label> <select name="location"
class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose...</option>
<option value="Benglore">Benglore</option>
<option value="Pune">Pune</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Mumbai">Delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="Nanded">Nanded</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Category</label> <select class="custom-select" 
id="inlineFormCustomSelectPref"  name="category">
<option selected>Choose...</option>
<option value="IT">IT</option>
<option value="Developer">Developer</option>
<option value="Networking">Networking</option>
<option value="Devopps">Devopps</option>
<option value="Administrator">Administrator</option>
<option value="Software Engineer">Software Engineer</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Status</label> <select class="form-control" name="status">
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>
</select>
</div>
</div>

<div class="form-group">
<label>Enter Description</label>
<textarea required rows="6" cols="" name="desc"
class="form-control"></textarea>
</div>

<button class="btn btn-success">Publish Job</button>
</form>
</div>
</div>
</div>
</div>
</body>
</html>