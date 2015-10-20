1. 將gaia-shipmentlink.jar & freemarker.jar放到shared_lib裡

2. 開啟eclipse -> help -> eclipse marketplace -> 在find輸入jboss tool然後按enter 
　-> 在下方搜尋結果中的JBoss Tools 4.1.2.Final，按下install -> 取消勾選所有項目 -> 勾選FreeMarker IDE
  -> 一直下一步即可安裝完成freemarker eclipse plugin。

3. 在tomcat/conf/context.xml中加入
    
    <Resource name="freemarker/config" auth="Container"
	type="freemarker.template.Configuration" factory="com.gaia.shipmentlink.jndi.factory.FreeMarkerConfigurationFactory"
	DirectoryForTemplateLoading="C:/absolute/path/to/ec/web/ROOT/WEB-INF/freemarker/"
	DefaultEncoding="UTF-8" />

4. 程式中呼叫方式

Context initCtx = new InitialContext();
Context envCtx = (Context) initCtx.lookup("java:comp/env");
Configuration cfg = (Configuration) envCtx.lookup("freemarker/config");
Template temp = cfg.getTemplate("path/to/template.ftl");
temp.process(root, outstream);
