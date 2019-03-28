<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body background="https://Shuo-Qi.github.io/img/bg.jpg" style="margin-left:100px;margin-top:50px;margin-right:100px;">
				<h1 align="center" style="color:SkyBlue">XQZ 小组</h1>
				<p style="text-align: center;"><img src="https://Shuo-Qi.github.io/img/logo.ico"  alt="logo" /></p>
				<hr style="width:60%;border:none;border-top:8px groove skyblue;margin-bottom:45px;"/>
				<h3 align="center" style="color:White">XQZ小队为2019学年XML课程设计第八组，所选课程设计主题为图片，组长齐硕，组员徐恩昊、张慧佳</h3>
				<p align="center"><img src="https://Shuo-Qi.github.io/img/tb.GIF" alt="bottom" ></img></p>
				<br/>
				<strong style="margin-left:330px;color:SkyBlue;font-size:150%">小组成员简介：</strong>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="team/card">
		<xsl:choose>
			<xsl:when test="id &gt; 2">
				<p style="margin-left:360px;color:red;font-size:150%">组员： <span style="color:SkyBlue;"><xsl:value-of select="name"/></span>
					<br/>
					<xsl:apply-templates select="student"/>
					<xsl:apply-templates select="contact"/>
					<xsl:apply-templates select="organization"/>
					<xsl:apply-templates select="address"/>
					<img src="https://Shuo-Qi.github.io/img/A.png" style="position:absolute; left:800px; top:620px;"/>
				</p>
			</xsl:when>
			<xsl:when test="id &gt; 1">
				<p style="margin-left:360px;color:red;font-size:150%">组员： <span style="color:SkyBlue;"><xsl:value-of select="name"/></span>
					<br/>
					<xsl:apply-templates select="student"/>
					<xsl:apply-templates select="contact"/>
					<xsl:apply-templates select="organization"/>
					<xsl:apply-templates select="address"/>
					<img src="https://Shuo-Qi.github.io/img/B.png" style="position:absolute; left:800px; top:880px;"/>
				</p>
			</xsl:when>
			<xsl:otherwise>
				<p style="margin-left:360px;color:red;font-size:150%">组长： <span style="color:SkyBlue;"><xsl:value-of select="name"/></span>
					<br/>
					<xsl:apply-templates select="student"/>
					<xsl:apply-templates select="contact"/>
					<xsl:apply-templates select="organization"/>
					<xsl:apply-templates select="address"/>
					<img src="https://Shuo-Qi.github.io/img/C.png" style="position:absolute; left:800px; top:1120px;"/>
				</p>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="student">
		<strong style="color:SkyBlue;">学号：<xsl:value-of select="."/></strong>
		<br/>
	</xsl:template>
	<xsl:template match="contact">
		<strong style="color:SkyBlue;">QQ：<xsl:value-of select="QQ"/><br/>
		Tel：<xsl:value-of select="tel"/><br/>
		Email：<xsl:value-of select="email"/></strong>
		<br/>
	</xsl:template>
	<xsl:template match="organization">
		<strong style="color:SkyBlue;">学校：<xsl:value-of select="."/></strong>
		<br/>
	</xsl:template>
	<xsl:template match="address">
		<strong style="color:SkyBlue;">地址：<xsl:value-of select="."/></strong>
		<br/>
	</xsl:template>
</xsl:stylesheet>
