1. �Ngaia-shipmentlink.jar & freemarker.jar���shared_lib��

2. �}��eclipse -> help -> eclipse marketplace -> �bfind��Jjboss tool�M���enter 
�@-> �b�U��j�M���G����JBoss Tools 4.1.2.Final�A���Uinstall -> �����Ŀ�Ҧ����� -> �Ŀ�FreeMarker IDE
  -> �@���U�@�B�Y�i�w�˧���freemarker eclipse plugin�C

3. �btomcat/conf/context.xml���[�J
    
    <Resource name="freemarker/config" auth="Container"
	type="freemarker.template.Configuration" factory="com.gaia.shipmentlink.jndi.factory.FreeMarkerConfigurationFactory"
	DirectoryForTemplateLoading="C:/absolute/path/to/ec/web/ROOT/WEB-INF/freemarker/"
	DefaultEncoding="UTF-8" />

4. �{�����I�s�覡

Context initCtx = new InitialContext();
Context envCtx = (Context) initCtx.lookup("java:comp/env");
Configuration cfg = (Configuration) envCtx.lookup("freemarker/config");
Template temp = cfg.getTemplate("path/to/template.ftl");
temp.process(root, outstream);
