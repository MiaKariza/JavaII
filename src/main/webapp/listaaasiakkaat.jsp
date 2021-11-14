<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Asiakkaat</title>
</head>
<body>

<table id="lista">
		<thead>
			<tr>
				<th>Etunimi</th>
				<th>Sukunimi</th>
				<th>Puhelin</th>
				<th>Sähköposti</th>
			</tr>
		</thead>
		<tbody>
		</tbody>

	</table>

<script>
$(document).ready(function() {
	$.ajax({url:"asiakkaat", type:"GET", dataType:"json", success:function(response) {
		$.each(response.asiakkaat, function(i, field) {
			var htmlStr;
			htmlStr+="<tr>";
			htmlStr+="<td>"+field.etunimi+"</td>";
			htmlStr+="<td>"+field.sukunimi+"</td>";
			htmlStr+="<td>"+field.puhelin+"</td>";
			htmlStr+="<td>"+field.sposti+"</td>";
			htmlStr+="</tr>";
			$("#lista tbody").append(htmlStr);						
		});
	},
	error:function() {
		console.log("virhe");
	}});
});

</script>

</body>
</html>


<!-- $.each(result.asiakkaat, function(i, field) {
					var htmlStr;
					htmlStr+="<tr>";
					htmlStr+="<td>"+field.etunimi+"</td>";
					htmlStr+="<td>"+field.sukunimi+"</td>";
					htmlStr+="<td>"+field.puhelin+"</td>";
					htmlStr+="<td>"+field.sposti+"</td>";
					htmlStr+="</tr>";
					$("#lista tbody").append(htmlStr);	 -->	