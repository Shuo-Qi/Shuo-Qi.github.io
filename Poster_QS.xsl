<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body background="https://Shuo-Qi.github.io/img/img.jpg" style="margin-left:150px;margin-top:50px;line-height:1.5;margin-right:150px;">
  
    <h2 style="margin-top:80px;font-family:Georgia;font-weight:bold;color:#1241AA;font-size:55px;text-align:center">World Classic Architecture</h2>
       
     <xsl:for-each select="root/Image">
     <xsl:if test="@ID = 31">
		<h3 style="font-weight:bold;font-size:40px;color:#AD1818;text-align:center; margin-top:60px;">
			<xsl:value-of select="DetailedInfo/@name"/>
		</h3>
		
		<p style="font-weight:bold;font-size:25px;margin-top:30px">
			ID:<xsl:value-of select="@ID"/>
		</p>
		
		<p>
		<img align="left" width="65%" style="margin-bottom:100px;">
			 <xsl:attribute name="src"><xsl:value-of select="BasicInfo/@Source"/></xsl:attribute>
		</img>
		
		<p style="color:#0C6978; margin-left:75%;font-size:23px;">
			<br/>
			<strong style="font-size:28px;color:#000000">图片基本信息：</strong>
			<br/><br/>
			作者：<xsl:value-of select="BasicInfo/@Author"/>
			<br/>
			创建时间：<xsl:value-of select="BasicInfo/@Time"/>
			<br/>
			链接：<xsl:value-of select="BasicInfo/@Source"/>	
			<br/>
			分辨率：<xsl:value-of select="BasicInfo/Resolution"/>
			<br/>
			格式：<xsl:value-of select="BasicInfo/Format"/>
			<br/>
			大小：<xsl:value-of select="BasicInfo/Size"/>
			<br/>
		</p>
		</p>

		<p style="margin-top:150px;">
			
			<strong style="color:#000000;font-size:25px;">建筑介绍：</strong>
			<span style="color:#E80000;font-size:25px;"><xsl:value-of select="DetailedInfo/Introduction"/></span>
			<br/><br/>
			<strong style="color:#000000;font-size:25px;">建筑风格：</strong>
			<span style="color:#4E5705; font-weight:bold;font-size:30px;"><xsl:value-of select="DetailedInfo/Style/@name"/></span>
			<span style="color:#E80000;font-size:25px;margin-left:20px;"><xsl:value-of select="DetailedInfo/Style"/></span>
			
		</p>
		
		<p style="margin-left:75%;margin-top:100px;font-size:20px;"><i>齐硕【XQZ工作室】出品</i></p>
		
	 </xsl:if>	
     </xsl:for-each>
        
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>