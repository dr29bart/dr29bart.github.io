<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:variable name="from_row" select="1"/>
    <xsl:variable name="to_row" select="7859"/>

    <xsl:template match="/">
        <xsl:for-each select="D/R[position()&gt;=$from_row and position()&lt;=$to_row]">
            <xsl:if test="@id='1'"><xsl:value-of select="$from_row+position()-1"/>,</xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>