<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
				version="2.0">
  
  <!-- apply the template for concept/title -->
  <xsl:template match="/concept/title">
    <fo:block xsl:use-attribute-sets="my-name">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <!-- apply the template for concept/shortdesc -->
  <xsl:template match="/concept/shortdesc">
    <fo:block xsl:use-attribute-sets="center">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <!-- edit footer -->
  <xsl:template name="insertBodyOddFooter"> 
    <fo:static-content flow-name="odd-body-footer"> 
      <fo:block xsl:use-attribute-sets="my-footer"> 
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="'Custom footer text'"/> 
      </xsl:call-template>      
      </fo:block> 
    </fo:static-content> 
  </xsl:template> 

  <!-- edit footer -->
  <xsl:template name="insertBodyOddHeader"> 
    <fo:static-content flow-name="odd-body-header"> 
      <fo:block xsl:use-attribute-sets="my-header"> 
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="'Body odd header'"/> 
      </xsl:call-template>      
      </fo:block> 
    </fo:static-content> 
  </xsl:template> 
</xsl:stylesheet>
