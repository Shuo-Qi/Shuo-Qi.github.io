<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body background="https://Shuo-Qi.github.io/img/img_2.jpg" style="margin-left:200px;margin-top:50px;margin-right:200px;line-height:1.5;background-position:center center;background-repeat: no-repeat;background-attachment: fixed;background-size: cover;">
				<h2 style="margin-top:80px;font-family:Georgia;font-weight:bold;color:#BB4444;font-size:45px;text-align:center">世界著名建筑图片</h2>
				<xsl:for-each select="root/Image">
					<xsl:sort select="@ID" data-type="number" order="descending"/>
					<xsl:if test="@ID = 32">
						<h3 style="font-weight:bold;font-size:30px;color:#808080;text-align:center; margin-top:60px;">
							<xsl:value-of select="DetailedInfo/@name"/>
						</h3>
						<p style="font-weight:bold;font-size:25px;margin-top:30px">
			ID:<xsl:value-of select="@ID"/>
						</p>
						<p>
							<img align="top" width="30%" height="300px">
								<xsl:attribute name="src"><xsl:value-of select="BasicInfo/@Source"/></xsl:attribute>
							</img>
							<p style="margin-left:0px; font-size:18px; color:#0C6978;">
								<strong style="color:#3300FF;">建筑简介：</strong>
								<span style="color:#E80000;">
									<xsl:value-of select="DetailedInfo/Introduction"/>
								</span>
								<br/>
								<strong style="color:#3300FF;">建筑风格：</strong>
								<span style="color:#E80000; font-weight:bold;">
									<xsl:value-of select="DetailedInfo/Style/@name"/>
								</span>
								<br/>
								<strong style="color:#3300FF;">风格简介：</strong>
								<span style="color:#E80000;">
									<xsl:value-of select="DetailedInfo/Style"/>
								</span>
								<br/>
								<br/>
			作者：<xsl:value-of select="BasicInfo/@Author"/>
								<br/>
			下载链接：<xsl:value-of select="BasicInfo/@Source"/>
								<br/>
			分辨率（像素）：<xsl:value-of select="BasicInfo/Resolution"/>
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
