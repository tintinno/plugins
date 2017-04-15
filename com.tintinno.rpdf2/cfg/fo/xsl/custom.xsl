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
  
  <!-- apply the template for section/title -->
  <xsl:template match="//section/title">
    <fo:block xsl:use-attribute-sets="section-heading">
      <xsl:apply-templates/>
    </fo:block>
  </xsl:template>

  <!-- edit footer to insert link to github -->
  <xsl:template name="insertBodyOddFooter"> 
    <fo:static-content flow-name="odd-body-footer"> 
      <fo:block xsl:use-attribute-sets="my-footer"> 
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="'Custom footer text'"/> 
      </xsl:call-template>      
      </fo:block> 
    </fo:static-content> 
  </xsl:template> 

  <!-- edit header to insert silly hidden message -->
  <xsl:template name="insertBodyOddHeader"> 
    <fo:static-content flow-name="odd-body-header"> 
      <fo:block xsl:use-attribute-sets="my-header"> 
      <xsl:call-template name="insertVariable">
        <xsl:with-param name="theVariableID" select="'Body odd header'"/> 
      </xsl:call-template>      
      </fo:block> 
    </fo:static-content> 
  </xsl:template> 

  <!-- template for table bodies -->
  <xsl:template name="table-body">
	<fo:table-body>
	<xsl:for-each select="li">
	  <fo:table-row margin="0" padding="0">
	   <fo:table-cell margin="0" padding="0">
		<fo:block>
		 <xsl:value-of select="substring-before(text(),'|')"/>
		</fo:block>
	   </fo:table-cell>
	   <fo:table-cell margin="0" padding="0">
		<fo:block>
		 <xsl:value-of select="substring-before( substring-after(text(),'|') , '|')"/>
		</fo:block>
	   </fo:table-cell>
	   <fo:table-cell margin="0" padding="0">
		<fo:block>
		 <xsl:value-of select="substring-after( substring-after(text(),'|') , '|')"/>
		</fo:block>
	   </fo:table-cell>
	  </fo:table-row>
	</xsl:for-each>
	</fo:table-body>
  </xsl:template>

  <!-- edit tables for 'independent coursework' section -->
  <xsl:template match="//section[@id='coursework']/ul">
    <fo:table margin-top="14px" margin-left="5px" padding-left="0">
	<fo:table-header>
	 <fo:table-row margin="0" padding="0">
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Class</fo:block>
		</fo:table-cell>
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Institution</fo:block>
		</fo:table-cell>
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Semester</fo:block>
		</fo:table-cell>
	 </fo:table-row>
	</fo:table-header>
	<xsl:call-template name="table-body"/>
    </fo:table> 
  </xsl:template>

  <!-- edit tables for 'education' section -->
  <xsl:template match="//section[@id='education']/ul">
    <fo:table margin-top="14px" margin-left="5px" padding-left="0">
	<fo:table-header>
	 <fo:table-row margin="0" padding="0">
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Degree</fo:block>
		</fo:table-cell>
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Institution</fo:block>
		</fo:table-cell>
		<fo:table-cell margin="0" padding="0">
			<fo:block font-weight="bold">Years</fo:block>
		</fo:table-cell>
	 </fo:table-row>
	</fo:table-header>
	<xsl:call-template name="table-body"/>
    </fo:table> 
  </xsl:template>

  <!-- edit tables for 'experience' section -->
  <xsl:template match="//section[@id='experience']/p">
    <fo:table margin-top="14px" margin-left="5px" padding-left="0">
	<fo:table-column column-width="30%"/>
	<fo:table-column column-width="70%"/>
	 <fo:table-body>
	  <xsl:for-each select=".">
      <fo:table-row margin="0" padding="0">
		<fo:table-cell margin="0" padding="0"> 
		 <fo:block font-weight="bold">
		  <xsl:value-of select="substring-before(text(),'|')"/>
		 </fo:block>
		 <fo:block>
		   <xsl:value-of select="substring-before( substring-after(text(),'|') , '|')"/>
		 </fo:block>
		 <fo:block padding-bottom="5px">
		   <xsl:value-of select="substring-after( substring-after(text(),'|') , '|')"/>
		 </fo:block>
		</fo:table-cell> 
		<fo:table-cell margin="0" padding="0">
		  <xsl:for-each select="./following-sibling::ul[1]/li">
		    <fo:block>
			  <fo:inline>•  </fo:inline>
			  <xsl:value-of select="."/>
			</fo:block>
		  </xsl:for-each>
		</fo:table-cell>
      </fo:table-row> 
     </xsl:for-each>
	 </fo:table-body>
    </fo:table> 
  </xsl:template>

  <!-- and let's get rid of the old ul -->
  <xsl:template match="//section[@id='experience']/ul"/>

</xsl:stylesheet>
