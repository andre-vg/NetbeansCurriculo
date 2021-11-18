<%-- 
    Document   : teste
    Created on : Nov 17, 2021, 12:23:53 AM
    Author     : André
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    
    <title>Document</title>
</head>
<body>
    <div id="container" style="height: 100%;"></div>
    <script charset="utf-8" src="https://cdn.jsdelivr.net/npm/echarts@5.2.0/dist/echarts.js"></script>
    <script type="text/javascript">
        var chart = document.getElementById("container");
          var myChart = echarts.init(chart);
          var option;
                  
            option = {
  tooltip: {
    trigger: 'item'
  },
  series: [
    {
      name: 'Access From',
      type: 'pie',
      radius: '50%',
      data: [
        { value: 1048, name: 'Search Engine' },
        { value: 735, name: 'Direct' },
        { value: 580, name: 'Email' },
        { value: 484, name: 'Union Ads' },
        { value: 300, name: 'Video Ads' }
      ],
      emphasis: {
        itemStyle: {
          shadowBlur: 10,
          shadowOffsetX: 0,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      }
    }
  ]
};
          myChart.setOption(option, true);
       </script>
</body>
</html>
