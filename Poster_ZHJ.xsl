<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body background="https://Shuo-Qi.github.io/img/jzbg.png" bgcolor="#E0E0E0" style="background-position:center center;background-repeat: no-repeat;">
				<h1 align="center" style="font-family:Georgia;color:bold">世界著名建筑</h1>
				<br/>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="root/Image">
		<xsl:if test="@ID = 16">
			<p style="margin-left:25%;color:#272727;font-size:200%;">	
				<strong>ID:<xsl:value-of select="@ID"/></strong>
				<br/>
				<img src="https://Shuo-Qi.github.io/Architecture/16.jpg" alt="建筑图片"/>
				<xsl:apply-templates select="BasicInfo"/>
				<xsl:apply-templates select="DetailedInfo"/>
			</p>
		</xsl:if>
	</xsl:template>
	<xsl:template match="BasicInfo">
		<p style="margin-left:28%;color:#7373B9;font-size:150%;">	
				<strong>作者：<span style="color:black;"><xsl:value-of select="@Author"/></span></strong>
				<br/>
				<strong>下载链接：<a href="https://Shuo-Qi.github.io/Architecture/16.jpg"><span style="color:black;"><xsl:value-of select="@Source"/></span></a></strong>
				<br/>
				<strong>时间：<span style="color:black;"><xsl:value-of select="@Time"/></span></strong>
				<br/>
				<xsl:apply-templates select="Resolution"/>
				<xsl:apply-templates select="Format"/>
				<xsl:apply-templates select="Size"/>
			</p>
	</xsl:template>
	<xsl:template match="Resolution">
		<strong>像素：<span style="color:black;"><xsl:value-of select="."/></span></strong><br/>
	</xsl:template>
	<xsl:template match="Format">
		<strong>格式：<span style="color:black;"><xsl:value-of select="."/></span></strong><br/>
	</xsl:template>
	<xsl:template match="Size">
		<strong>大小：<span style="color:black;"><xsl:value-of select="."/></span></strong><br/>
	</xsl:template>
	<xsl:template match="DetailedInfo">
		<p style="margin-left:28%;color:#750000;font-size:180%;">	
				<strong>名称：<strong style="color:black;"><xsl:value-of select="@name"/></strong></strong>
				<br/>
				<xsl:apply-templates select="Introduction"/>
				<xsl:apply-templates select="Style"/>
			</p>
	</xsl:template>
	<xsl:template match="Introduction">
		<strong>介绍：<span style="color:black;"><xsl:value-of select="."/></span></strong><br/>
	</xsl:template>
	<xsl:template match="Style">
		<strong>风格：<strong style="color:black;"><xsl:value-of select="@name"/></strong></strong>
		<br/>
		<strong>分类：<strong style="color:black;"><xsl:value-of select="@Classification"/></strong></strong>
		<br/>
		<strong>风格介绍：<span style="color:black;"><xsl:value-of select="."/></span></strong><br/>
	</xsl:template>
</xsl:stylesheet>
