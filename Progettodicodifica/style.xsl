<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="html" indent="yes" />
    <xsl:variable name="varName">crediti</xsl:variable>
    <xsl:template match="/" >
        <html>
            <head>
                <!--titolo-->
                <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet" />
                <!--paragrafi-->
                <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro" rel="stylesheet" />
                <link href="style.css" rel="stylesheet" type="text/css" />
                <meta charset="UTF-8" />
                <title> 
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:id='mainTitle']"/>
                </title>
                <script src="main.js"></script>
            </head>
            <body>
                <!-- parte introduttiva -->
                <header>
                    <h1 class="titolo"><xsl:value-of select="tei:teiCorpus/tei:text/tei:span/tei:title[@xml:id='titleProject']"/></h1>
                    <nav>
                         <ul>
                             <xsl:for-each select="tei:teiCorpus/tei:teiCorpus">
                             <li>
                                 <a href="#{@xml:id}"> 
                                     <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:titlePage/tei:index/tei:term"/>
                                  </a>
                             </li>
                             </xsl:for-each>
                             <li> <a href="#crediti"> Crediti </a></li>
                         </ul>
                    </nav>
                    <div>
                        <xsl:value-of select="tei:teiCorpus/tei:text/tei:body"/>
                    </div>
                </header>
                <xsl:for-each select="tei:teiCorpus/tei:teiCorpus">
                <section id="{@xml:id}">
                    <div>
                        <xsl:apply-templates select="."/>
                    </div>
                </section>
                </xsl:for-each>
                <section id="crediti">
                    <div class="cont">
                        <xsl:apply-templates select="/tei:teiCorpus/tei:teiHeader[@xml:id='main']"/>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
    
    <!-- template informazioni -->
    <xsl:template match="tei:teiCorpus/tei:teiCorpus/tei:teiHeader/tei:fileDesc">
        <div class="info">
            <xsl:if test="../../@xml:id='pagina_138'">
            <div class="informazioni">
                <h2> <xsl:value-of select="tei:titleStmt/tei:title"/> </h2>
                <p>
                    <xsl:for-each select="tei:notesStmt/tei:note">
                        <xsl:value-of select="."/>
                    </xsl:for-each>
                </p>
                <h4><xsl:value-of select="tei:sourceDesc/tei:bibl/tei:title[@type='custom']"/></h4>
                <p>
                    <i><xsl:value-of select="tei:sourceDesc/tei:bibl/tei:author"/></i> <xsl:value-of select="tei:sourceDesc/tei:bibl/tei:date"/>.
                </p>
                <p> 
                    <xsl:value-of select="tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/>
                </p>
                <p> 
                    <xsl:value-of select="tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/>
                </p>
            </div>
            </xsl:if>
            <xsl:apply-templates select="tei:sourceDesc/tei:listPerson"/>
            <xsl:apply-templates select="tei:sourceDesc/tei:listPlace"/>
        </div>
    </xsl:template>
    
    <!-- PERSONE -->
    <xsl:template match="tei:listPerson">
        <div class="persone">
            <p><h1>Persone:</h1></p>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:person">       
            <div class="persona">
                <xsl:for-each select=".">
                    <p><b><xsl:value-of select="tei:persName"/></b></p>
                </xsl:for-each>
            </div>
    </xsl:template>
    
    <!-- TIPOLOGIA -->
    <xsl:template match="tei:textClass">
        <div class="descr">
            <p>
                <b>Tipologia: </b> <xsl:value-of select="tei:keywords/tei:term[@type='descr1']"/>
                - <xsl:value-of select="tei:keywords/tei:term[@type='descr2']"/>
            </p>
        </div>
    </xsl:template>
    
    <!-- LINGUA -->
    <xsl:template match="tei:langUsage">
        <div class="lingua">
            <p><xsl:apply-templates/> </p>
        </div>
    </xsl:template>
    
    <!-- immagine -->
    <xsl:template match="tei:facsimile">
        <div class="immagine">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:zone">
        <div class="zone" id="{@xml:id}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:facsimile/tei:surface//tei:zone/tei:note">
        <div class="suddivision">
            <br /><br />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:surface/tei:graphic">       
        <div class="imgfronte"> 
            <img src="{@url}"/>
        </div>
    </xsl:template>
       
    <!-- template testo -->
    <xsl:template match="tei:text">
        <div class="corpo">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <!-- descrizione della pagina + note -->
    
    <xsl:template match="tei:figure">
        <div class="fronte">
            <p> <xsl:value-of select="tei:figDesc"/>
                <xsl:for-each select="tei:note">
                    <xsl:value-of select="."/>
                </xsl:for-each>
            </p>
            
        </div>
    </xsl:template>
    
    <!-- codifica del testo -->
    
    <xsl:template match="tei:div[@type='message']">
        <div class="testo">
            <p>
                <xsl:apply-templates/>        
            </p> 
        </div>
    </xsl:template>
    
    <xsl:template match="tei:div">
        <div class="testofronte">
            <p>
                <xsl:apply-templates/>
            </p>
        </div>
    </xsl:template>
  
    <xsl:template match="tei:lb">
        <br /><br />
        <span class="{@facs}" onmouseover="evidenzia(this)" onmouseout="disevidenzia(this)">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>
    

    <xsl:template match="tei:choice">
        <i>
            <xsl:for-each select="abbr">
                <xsl:value-of select="tei:expan"/>
            </xsl:for-each>
            <xsl:value-of select="tei:corr"/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='codice']">
        <div class="archivio">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <!-- FOOTER -->
    <xsl:template match="tei:title">
        <h1> <xsl:value-of select="."/> </h1>
    </xsl:template>
    <xsl:template match="tei:respStmt">
        <div>
            <p> <b> <xsl:value-of select="tei:resp"/>: </b> </p>
            <p> <xsl:for-each select="tei:name">
                <xsl:value-of select="."/>
            </xsl:for-each>
            </p>
        </div>
    </xsl:template>
    <!-- edizione -->
    <xsl:template match="tei:edition">
        <div>
            <p> 
                <i>
                    <xsl:value-of select="."/> - anno 
                    <xsl:value-of select="tei:date"/>
                </i>
            </p>
        </div>
    </xsl:template>
    <xsl:template match="tei:publicationStmt">
        <div>
            <p>
                <i>
                    <xsl:value-of select="tei:publisher"/> 
                    (<xsl:value-of select="tei:pubPlace"/>) - 
                    <xsl:value-of select="tei:availability/tei:p"/>
                </i> 
            </p>
        </div>
    </xsl:template>
    <xsl:template match="tei:sourceDesc">
        <div>
            <p>
                <i>
                    <xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:country"/> - 
                    <xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:settlement"/> <br/>
                    <xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:repository"/>
                </i>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>