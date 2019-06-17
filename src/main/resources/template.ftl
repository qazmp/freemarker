<html>
	<head>
		<title>测试freemark</title>
		<meta charset="UTF-8"/>
	</head>
	<body>
		<#include "header.ftl">
		<h2>你好， ${name}</h2>
		
		<#--指令-->
		<#assign user={'name': 'jack23', 'email': '8234342@163.com', 'address': '美国华尔街'}>
		<ul>
			<li>
				姓名: ${user.name}
			</li>
			<li>
				邮箱: ${user.email}
			</li>
			<li>
				地址: ${user.address}
			</li>
		</ul>	
		
		<#if user.name == 'jack'>
			welcome ${user.name}
			<#else>
				same welcome
		</#if>
		
		<table>
			<thead>
				<tr>
					<th>name</th>
					<th>price</th>
				<tr>
			</thead>
			<tbody>
				<#list goodsList as goods>
					<tr>
						<td>${goods.name}</td>
						<td>${goods.price}</td>
					</tr>
				</#list>
			</tbody>
		</table>
		
		
		大小 : ${goodsList? size}
		
		<#assign peoples = "[{'name': '胡汉山'}, {'name': '滑板福'}]">
		
		<#assign peoplesObj = peoples? eval>
		
		<ul>
			<#list peoplesObj as people>
				<li>${people.name}</li>
			</#list>
		</ul>
		
		${'dsfasf'? length}
		
		日期： ${dateTime?time}<br/>
		时间： ${dateTime?date}<br/>
		日期时间： ${dateTime?datetime} <br>
		 ${dateTime?string('yyyy年 MM月 dd日')}
		 
		 <#if aaa??>
		 		aaa变量已经定义 ${aaa}
		 	<#else>
		 		aaa变量没有定义
		 </#if>
		 
		 
		 <#assign a = 123>
		 
		
	</body>
</html>