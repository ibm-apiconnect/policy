<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:apim="http://www.ibm.com/apimanagement"
                xmlns:dp="http://www.datapower.com/extensions"
                extension-element-prefixes="dp"
                exclude-result-prefixes="dp apim">
  <xsl:include href="local:///isp/policy/apim.custom.xsl" />
  <xsl:template match="/">
   <xsl:if test="/SLMResults/Statement/StatementResult != 'accept'">
    <xsl:call-template name="apim:error">
        <xsl:with-param name="httpCode" select="'429'"/>
        <xsl:with-param name="httpReasonPhrase" select="'Circuit Breaker'"/>
        <xsl:with-param name="errorName" select="'CircuitBreakerSLM'"/>
        <xsl:with-param name="errorMessage" select="'Circuit Breaker'"/>
    </xsl:call-template>
   </xsl:if>
  </xsl:template>
</xsl:stylesheet>
