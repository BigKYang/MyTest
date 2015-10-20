<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/custom.css">

    <!--[if lt IE 7]>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome-ie7.min.css" rel="stylesheet">
	<![endif]-->

    <!-- HTML5 shim and Respond.js 讓 IE8 支援 HTML5 元素與媒體查詢 -->
    <!-- 警告：Respond.js 無法在 file:// 協定下運作 -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

<#include "header.ftl">
<br>
<br>
<br>
<#include "banner.ftl">
  
<div class="container">
    <div class="row">
         <#-- 左框 4 -->
	     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">	       
	          <#include "ct.ftl">
         </div>       
         <#-- 右框 8 -->
         <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
              <#include "right.ftl">
         </div>
    </div>
    <div class="row">
         <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
              <#include "form.ftl">
         </div>
    </div>
</div>

<#include "freemarker_test.ftl">

<#include "footer.ftl">
   
    <!-- jQuery (Bootstrap 所有外掛均需要使用) -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- 依需要參考已編譯外掛版本（如下），或各自獨立的外掛版本 -->    
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>