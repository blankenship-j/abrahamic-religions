<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
  
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
        
        <xsl:output method="xhtml" encoding="UTF-8" indent="yes"/>
        
        <xsl:template match="/doc">
            <html>
                <head>
                    <title><xsl:value-of select="@name"/></title>
                    <link rel="stylesheet" type="text/css" href="styles.css"/>
                </head>
                <body>
                    <h1><xsl:value-of select="@name"/></h1>
                    <xsl:apply-templates select="story/chapter"/>
                </body>
            </html>
        </xsl:template>
        
        <xsl:template match="chapter">
            <h2>Chapter <xsl:value-of select="@number"/></h2>
            <xsl:apply-templates select="verse"/>
        </xsl:template>
        
        <xsl:template match="verse">
            <div class="verse">
                <p><strong>Verse <xsl:value-of select="@number"/>:</strong> 
                    <xsl:for-each select="god">
                        <span class="god"><xsl:value-of select="."/></span>
                    </xsl:for-each>
                    <xsl:value-of select="."/>
                </p>
            </div>
        </xsl:template>
        
    </xsl:stylesheet>
</xsl:stylesheet>