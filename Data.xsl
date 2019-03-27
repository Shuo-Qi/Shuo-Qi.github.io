<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
  <body background="C:\Users\65601\Desktop\weather.png" style="margin-left:150px;margin-top:50px;">
    <h2 style="font-weight:bold;color:red;font-size:30px;text-align:center">经典建筑图片</h2>
    <hr style="width:30%;height:6px;border:none;border-top:8px groove skyblue;margin-bottom:45px;"/>    
      <xsl:apply-templates/>        
  </body>
  </html>
</xsl:template>

<xsl:template match="Image">
<strong style="font-size:25px;">ID:<xsl:value-of select="@ID"/></strong>
<br /><br />
<strong style="font-size:25px;color:#AB1131;"><xsl:value-of select="DetailedInfo/@name"/></strong>
<br /><br />
<img>
     <xsl:attribute name="src"><xsl:value-of select="BasicInfo/@Source"/></xsl:attribute>
</img>
<br /><br />
<strong style="font-size:20px">基本信息：</strong>
<br />
	<xsl:apply-templates select="BasicInfo"/> 
<strong style="font-size:20px">详细信息：</strong>
<br />
	<xsl:apply-templates select="DetailedInfo"/> 
<br />
</xsl:template>


<xsl:template match="BasicInfo">
<table width="56%" border="1" style="text-align:center; border-color:#21211d;border-collapse:collapse; padding-left:120px;">
  <tr>
    <td>发布者</td>
    <td>创建时间</td>
    <td>图片链接</td>
    <td>分辨率</td>
    <td>格式</td>
    <td>大小</td>
  </tr>
  <tr>
    <td style="color:#6F2F0D"><xsl:value-of select="@Author"/></td>
    <td style="color:#6F2F0D"><xsl:value-of select="@Time"/></td>
    <td style="color:#6F2F0D"><xsl:value-of select="@Source"/></td>
    <td style="color:#6F2F0D"><xsl:value-of select="Resolution"/></td>
    <td style="color:#6F2F0D"><xsl:value-of select="Format"/></td>
    <td style="color:#6F2F0D"><xsl:value-of select="Size"/></td>
  </tr>
<br />
</table>
<br />
</xsl:template>


<xsl:template match="DetailedInfo">
<br />
建筑简介：<span style="color:#4418BF"><xsl:value-of select="Introduction"/></span>
    <br />  
建筑风格：<span style="color:#CCAF24; font-size:20px; font-weight:bold;"><xsl:value-of select="Style/@name"/></span>
    <br />  
风格简介：<span style="color:#4418BF"><xsl:value-of select="Style"/></span>
    <br />
    <br />      
</xsl:template>




</xsl:stylesheet>
