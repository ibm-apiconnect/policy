<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:apim="http://www.ibm.com/apimanagement"
                xmlns:dp="http://www.datapower.com/extensions"
                extension-element-prefixes="dp"
                exclude-result-prefixes="dp apim">
  <xsl:include href="local:///isp/policy/apim.custom.xsl" />
  <xsl:template match="/">
    <xsl:variable name="props" select="apim:policyProperties()"/>
    <xsl:variable name="name" select="dp:slm-policy()/SLMPolicy/@name"/>
    <xsl:variable name="level" select="dp:slm-set-threshold-level($name,40,number($props/concurrency))"/>
    <!--
    <xsl:message dp:priority="debug">
      circuit-breaker-slm: key=<xsl:value-of select="$props/key"/> concurrency=<xsl:value-of select="$props/concurrency"/>
      </xsl:message>
    -->
    <result>
      <match/>
      <value><xsl:value-of select="$props/key"/></value>
    </result>
  </xsl:template>
</xsl:stylesheet>
