<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:param name="teacher">Борисов И.О.</xsl:param>
  <xsl:param name="keyword">XSLT</xsl:param>
  
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Курсы</title>
      </head>
      <body>
        <h1>Наши курсы</h1>
        
        <h3>Курсы, которые читает <xsl:value-of select="$teacher"/></h3>
        <ul>
          <xsl:for-each select="courses/course[teachers/teacher = $teacher]">
            <li><xsl:value-of select="title"/></li>
          </xsl:for-each>
        </ul>
        
        <h3>Курсы, которые используют XML</h3>
        <ul>
          <xsl:for-each select="courses/course[keywords/keyword = 'XML']">
            <li><xsl:value-of select="title"/></li>
          </xsl:for-each>
        </ul>
        
        <h3>Курсы <xsl:value-of select="$teacher"/>, в которых есть тема <xsl:value-of select="$keyword"/></h3>
        <ul>
          <xsl:for-each select="courses/course[keywords/keyword = $keyword][teachers/teacher = $teacher]">
            <li><xsl:value-of select="title"/></li>
          </xsl:for-each>
        </ul>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>