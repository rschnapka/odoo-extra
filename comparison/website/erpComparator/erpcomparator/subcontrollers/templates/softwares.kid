<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#" py:extends="../../templates/master.kid">

<head>
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" py:replace="''"/>
    <title>Comparison</title>
    
    <script type="text/javascript">
	    function view_detail(id) {
	    	var elem = document.getElementById(id);
	        elem.style.display = elem.style.display == 'none' ? '' : 'none';
		}
	</script>
    
</head>
<body>
	<div id="bodybackground">
		<div style="height: 46px; width: 890px; float: left;">
			<div style="float:left;width:9;">
				<img src="/static/images/whitebg.gif" alt="" width="9" height="46"/>
			</div>
		    <div style="float:left;width:172;">
		    	<a href="#" onclick="window.location.href='/comparison'" onmouseover="document.comparison_image.src='/static/images/comparison_hover.jpg'" onmouseout="document.comparison_image.src='/static/images/comparison.jpg'">
		    		<img src="/static/images/comparison.jpg" name="comparison_image" alt="" border="0" width="172" height="46"/>
		    	</a>
		    </div>
		    <div style="float:left; width:175; height:46;">
		    	<a href="#" onclick="window.location.href='/graph'" onmouseover="document.graph_image.src='/static/images/graphs_hover.jpg'" onmouseout="document.graph_image.src='/static/images/graphs.jpg'">
		    		<img src="/static/images/graphs.jpg" name="graph_image" alt="" border="0" width="175" height="46"/>
		    	</a>
		    </div>
		    <div style="float:left;width:176;">
		    	<a href="#" onclick="window.location.href='/softwares'">
		    		<img src="/static/images/software_hover.jpg" name="software_image" alt="" border="0" width="176" height="46"/>
		    	</a>
		    </div>
		    <div style="float:left;width:176;">
		    	<a href="#" onclick="window.location.href='/news'" onmouseover="document.news_image.src='/static/images/news_hover.jpg'" onmouseout="document.news_image.src='/static/images/news.jpg'">
		    		<img src="/static/images/news.jpg" name="news_image" alt="" border="0" width="176" height="46"/>
		    	</a>
		    </div>
		    <div style="float:left;width:173;">
		    	<a href="#" onclick="window.location.href='/about'" onmouseover="document.about_image.src='/static/images/about_hover.jpg'" onmouseout="document.about_image.src='/static/images/about.jpg'">
		    		<img src="/static/images/about.jpg" name="about_image" alt="" border="0" width="173" height="46"/>
		    	</a>
		    </div>
		    <div style="float:left;width:9;">
		    	<img src="/static/images/rightwhitebg.gif" alt="" width="9" height="46"/>
		    </div>          
		</div>
		<div>
			<img src="/static/images/bluebgimage.png"/>
		</div>
		<table id="checkboxtext" py:for="r in res">
			<tr>
				<td>
					<b style="color: #021677;">
						${r['name']} : 
					</b>		
				</td>
			</tr>
			<tr>
				<td>
					<div id="${r['name']}" style="overflow: hidden; overflow-x: auto; width: 800px;">
						<pre style="white-space: default;">${r['note'] or ''}</pre>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>