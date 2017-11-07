<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<div id="main" style="height:400px"></div>
		<div id="main2" style="height:400px"></div>
		<div id="main3" style="height:400px"></div>
		<div id="main4" style="height:400px"></div>
		
		<script src="jquery-1.11.0.min.js"></script>
		<script src="echarts-2.2.7/build/dist/echarts.js"></script>
    	<script src="myEcharts.js"></script>
    	<script type="text/javascript">
    		var param = {
    			type : "bar",
    			option:{
    				theme:"infographic"
    			},
    			content:{
    				title:{text:"衣服销量",subtext:""},
    				series:[
   						{
   							name:'销量',
   							data:[{name:"衬衫",value:5},{name:"羊毛衫",value:20},{name:"雪纺衫",value:40},{name:"裤子",value:10},{name:"高跟鞋",value:10},{name:"袜子",value:20}]
   						}
   					]
    			}
    		};
    		
    		var param2 = {
        			type : "line",
        			option:{
        				theme:"macarons"
        			},
        			content : {
        				series : [
        				    {
    	    					name : "最高气温",
    	    					data : [{name:"周一",value:11},{name:"周二",value:11},{name:"周三",value:15},{name:"周四",value:13},{name:"周五",value:12},{name:"周六",value:13},{name:"周日",value:10}]
        				    }
        				]
        			}
        		};
        		
        		var param3 = {
        			type : "pie",
        			content : {
        				series : [
        				    {
        				    	name : "访问来源",
        				    	data : [{name:"直接访问",value:335,child:[{name:"阿里",value:128,child:[{value:10,name:'搜狗'},{value:90,name:'百度'},{value:10,name:'谷歌'}]},{name:"百度",value:246},{name:"腾讯",value:388}]},{name:"邮件营销",value:310},{name:"联盟广告",value:234},{name:"视频广告",value:135},{name:"搜索引擎",value:1548}]
        				    }      
        				]
        			}
        		};
        		
        		$("#main").myEcharts(param);
        		$("#main2").myEcharts(param2);
        		$("#main3").myEcharts(param3);
        		//$("#main4").myEcharts(param4);
    	</script>
	</body>
</html>



<!-- <html>
<body>
<h2>Hello World!</h2>
</body>
</html> -->