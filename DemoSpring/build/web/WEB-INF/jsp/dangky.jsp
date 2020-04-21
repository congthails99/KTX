
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<style type="text/css">
	
	 tr td {
		
		padding: 13px;
	}
</style>
<body>
	<div style="width: 100%; height: 650px;display: flex; align-items: center; justify-content: center;">
		<form method="post" commandName="tk" action="xulydangky.html" style="width: 35%; height: 235px; border: 1px solid blue">
			<div style="width: 100%; height: 35px; background-color: blue; color: white;display: flex; align-items: center; justify-content: center;"> Đăng ký</div>
			<div style="width: 100%; height: 94px;padding: 17px;">
				<table>
				<tr>
					<td style="font-size: 12px"><b>Username:</b></td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td style="font-size: 12px"><b>Password:</b></td>
					<td><input type="text" name="password"></td>
				</tr>
                                <tr>
					<td style="font-size: 12px"><b>Ho ten:</b></td>
					<td><input type="text" name="hoten"></td>
				</tr>
                                        <tr><th>
                                    
                                    </th>
                                    <th>
                                        </div>
			<div style="width: 100%; height:90px;">
				<center><input type="submit"  value="Đăng ký"></center>
                                    </th>
                                </tr>
			</table>		
	            </div>
	            <br>
			</div>
		</form>
	</div>
</body>
</html>