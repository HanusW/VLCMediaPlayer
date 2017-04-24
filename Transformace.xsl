<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/HanusW/VLCMediaPlayer -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="VLCMediaPlayer_konfigurace/rozhrani-nas/nastaveni [@rkategorie = 'styl']"> 
			<xsl:sort select="jazyk" order="descending"/>
			{
			"Výpis nastavení sekce styl",
			"Jazyk": "<xsl:value-of select="jazyk"/>",
			"Styl vzhledu": "<xsl:value-of select="vzhled"/>",
			"Zobrazeno ovládání ve fullscreenu": "<xsl:value-of select="fullscreen-ovladani"/>",
			"Minimalizované rozhraní": "<xsl:value-of select="minimalni-rozhrani"/>",
			"Změna rozhraní podle velikosti videa": "<xsl:value-of select="velikost-roz-video"/>",
			"Pozastavit přehrávání při minimalizaci": "<xsl:value-of select="pozastavit-minimalizace"/>",
			"Ikona v oznamovacím panelu": "<xsl:value-of select="ikona-oznpanel"/>",
			"Oznámit přechod na další médium v oznamovací panelu při": "<xsl:value-of select="zmena-media-oznameni"/>",			
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>