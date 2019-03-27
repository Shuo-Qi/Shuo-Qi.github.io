<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body background="https://Shuo-Qi.github.io/img/img.jpg" style="margin-left:200px;margin-top:50px;margin-right:200px; line-height:1.5;">
  
    <h2 style="margin-top:80px;font-family:Georgia;font-weight:bold;color:#1241AA;font-size:45px;text-align:center">World Classic Architecture</h2>
       
     <xsl:for-each select="root/Image">
     <xsl:sort select="@ID" data-type="number" order="descending"/>
     <xsl:if test="@ID &lt; 34">
		<h3 style="font-weight:bold;font-size:30px;color:#AD1818;text-align:center; margin-top:60px;">
			<xsl:value-of select="DetailedInfo/@name"/>
		</h3>
		
		<p style="font-weight:bold;font-size:25px;margin-top:30px">
			ID:<xsl:value-of select="@ID"/>
		</p>
		
		<p>
		<img align="left" width="30%" height="300px" >
			 <xsl:attribute name="src"><xsl:value-of select="BasicInfo/@Source"/></xsl:attribute>
		</img>
		
		<p style="margin-left:400px; font-size:18px; color:#0C6978;">
			
			<strong style="color:#000000;">建筑介绍：</strong>
			<span style="color:#E80000;"><xsl:value-of select="DetailedInfo/Introduction"/></span>
			<br/>
			<strong style="color:#000000;">建筑风格：</strong>
			<span style="color:#4E5705; font-weight:bold;"><xsl:value-of select="DetailedInfo/Style/@name"/></span>
			<br/>
			<strong style="color:#000000;">风格介绍：</strong>
			<span style="color:#E80000;"><xsl:value-of select="DetailedInfo/Style"/></span>
			
			<br/><br/>
			<strong style="font-size:20px;color:#000000">图片基本信息：</strong>
			<br/>
			作者：<xsl:value-of select="BasicInfo/@Author"/>
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
		
	 </xsl:if>	
     </xsl:for-each>
        
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>