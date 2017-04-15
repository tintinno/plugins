<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">
  <xsl:variable name="page-width">210mm</xsl:variable>
  <xsl:variable name="page-height">297mm</xsl:variable>


  <xsl:attribute-set name="my-name">
    <xsl:attribute name="font-size">16pt</xsl:attribute>
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="center">
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>

<xsl:attribute-set name="my-footer"> 
  <xsl:attribute name="text-align">right</xsl:attribute> 
  <xsl:attribute name="font-size">8pt</xsl:attribute> 
  <xsl:attribute name="font-weight">regular</xsl:attribute> 
  <xsl:attribute name="color">#888</xsl:attribute> 
  <xsl:attribute name="padding-bottom">15pt</xsl:attribute> 
  <xsl:attribute name="margin-right">25pt</xsl:attribute> 
</xsl:attribute-set>

<xsl:attribute-set name="my-header">
  <xsl:attribute name="color">white</xsl:attribute> 
</xsl:attribute-set>

</xsl:stylesheet>
