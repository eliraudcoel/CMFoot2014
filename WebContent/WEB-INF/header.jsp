<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="inc/style.css">
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<title>Insert title here</title>
	</head>
	<body>
		<img class="image_header" src="image/header.png" width="500px">
		
		<nav class="navbar navbar-inverse" role="navigation">
          <ul class="nav navbar-nav">
            <li class="active">
            	<a href="Application?action=home">Home</a>
            </li>
            <li>
            	<a href="Application?action=groupes">Liste des groupes</a>
            </li>
            <li>
            	<a href="SrvGroupes?param=value">Liste des groupes via Servlet</a>
            </li>
            <li>
				<a href="Application?action=matchs">Liste des matchs</a>
			</li>
			 <li>
            	<a href="SrvGroupes?param=value">Liste des matchs via Servlet</a>
            </li>
          </ul>
        </nav>
        <div class="container">
        	<div class="row">