<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <!--<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">-->
    
    <xsl:output method="xhtml" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Old Testament</title>
                <link rel="stylesheet" type="text/css" href="Quran.css"/>
            </head>
            <body>
                <h1>Christian Scripture</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="story">
        <h2><xsl:value-of select="@s_name"/></h2>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="book">
        <h3><xsl:value-of select="@name"/></h3>
        <xsl:apply-templates select="verse"/>
    </xsl:template>
    
    <xsl:template match="verse/*">
        <span class="{name()} {@*}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="verse">
        <div class="verse">
            <p><strong>Verse <xsl:value-of select="@number"/>:</strong> 
                <xsl:value-of select="."/>
            </p>
        </div>
    </xsl:template>
    
</xsl:stylesheet>