<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace = "http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    <xsl:output method="html" indent="yes"/>
     
    <!-- DECLARATION DES VARIABLES DES FICHIERS DE SORTIE HTML -->
    
    <xsl:variable name="accueil">
        <xsl:value-of select="concat('accueil','.html')"/>
    </xsl:variable>
    
    <xsl:variable name="chap10">
        <xsl:value-of select="concat('chapitre_10','.html')"/>
    </xsl:variable>
    
    <xsl:variable name="index">
        <xsl:value-of select="concat('index','.html')"/>
    </xsl:variable>
    
                
    <!-- DECLARATION DE LA VARIABLE CONTENANT LE HEAD -->
    
    <xsl:variable name="head">
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title><xsl:value-of select="//titleStmt/title[@level='m']"/>, par <xsl:value-of select="concat(//titleStmt/author/persName/forename,' ', //titleStmt/author/persName/surname)"/>.</title>
            <meta name="description">
                <xsl:attribute name="content">
                    <xsl:value-of select="//titleStmt/title[@n='m']"/>, <xsl:value-of select="//titleStmt/title[@level='a']"/>
                </xsl:attribute>
            </meta>
            <meta name="author">
                <xsl:attribute name="content">
                    <xsl:value-of select="//titleStmt/respStmt/name"/>
                </xsl:attribute>
            </meta>
            <link rel="icon" href="https://www.chartes.psl.eu/favicon.ico"/>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script><link rel="icon" type="image/png" href="../images/favicon.png"/>
                <style type="text/css">
                    
                   /* MISE EN FORME DES PAGES */
                    
                   body
                    {
                    background-color:  #fff6ff  ;
                    margin-top: 50px;
                    margin-bottom: 100px;
                    margin-left: 300px;
                    margin-right: 300px;
                    text-align: justify;
                    font-family: "Times New Roman", Times, serif;
                    font-size: 16px;
                    
                    }
                    
                    /* MISE EN FORME DES TITRE ET ALIGNEMENT */
                    
                    .en_tete {
                    margin-top: 40px;
                    margin-bottom: 15px;
                    border-style: dotted;
                    border-color:  #4d004d;
                    border-radius: 10px;
                    background-color:  #fffcff ;
                    }
                   
                    
                    h1 {
                    text-align:center;
                    margin-bottom: 15px;
                    font-size:38px;
                    text-decoration: underline;
                    color:#4d004d;
                    }
                    
                    h2 {
                    text-align:center;
                    margin-bottom: 15px;
                    font-size:30px;
                    text-decoration-line: underline;
                    text-decoration-style: dotted;  
                    color:#4d004d;
                   
                    }
                    
                    h3 {
                    text-align:center;
                    margin-bottom: 25px;
                    font-size:22px;
                    color:#4d004d;
                    }
                    
                    h5 {
                    margin-top: 16px;
                    margin-bottom: 15px;
                    font-size: 17px;
                    color:#4d004d;
                    }
                    
                    /* INSERER DES ESPACES AVANT ET APRES LES DIV */
                    
                    div {
                    margin-top: 20px;
                    margin-bottom: 20px;
                    }
                    
                    /* MISE EN FORME DU FOOTER */
                    
                    footer {
                    margin-top: 40px;
                    border-style: dotted;
                    border-color:  #4d004d;
                    border-radius: 10px;
                    
                    }
                    
                    /* MISE EN FORME DES ENCADRES */
                    
                    .text-muted {
                    background-color:#fffcff ;
                    color: #ff80ff;
                    
                    }
                    
                    form {
                    border-style: dotted;
                    color: #787878;                    ;
                    } 
                    
                </style>
        </head>
    </xsl:variable>
    

    <!--DECLARATION DE LA VARIABLE DU HEADER DE CHAQUE PAGE -->
    
    <xsl:variable name="header">
        <header class="text-muted">
            <div class="en_tete">
                <p class="p-3 mb-0">
            <h1 title="main"><i><xsl:value-of select="//titleStmt/title[@level='m']"/></i>, par <xsl:value-of select="concat(//titleStmt/author/persName/forename,' ', //titleStmt/author/persName/surname)"/>. </h1> 
            <h2 title="chapter"><xsl:text>Chapitre X</xsl:text></h2>
            <h3 title="subtitle"><i><xsl:value-of select="//titleStmt/title[@level='a']"/></i></h3>
                </p>
            </div>
        </header>    
    </xsl:variable>   
    
 
    
    <!-- DECLARATION D'UNE VARIABLE CONTENANT LE FOOTER -->
    
    <xsl:variable name="footer">
        <footer class="text-muted">
            <div class="container">
                <p class="p-3 mb-0">
                  <i><xsl:value-of select="//encodingDesc/projectDesc/p"/><xsl:text>, et transformation en HTML pour le cours XSLT de Jean-Damien Généro.</xsl:text></i>
                </p>
            </div>
        </footer>
        <script src="script.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </xsl:variable>
    
    
    <!-- DECLARATION DES VARIABLES AVEC LES LIENS DE RETOUR -->
    
    <xsl:variable name="return_home">
        <i><a href="{concat('./', $accueil)}">Revenir à l'accueil</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_index">
        <i><a href="{concat('./', $index)}">Index des noms de lieux</a></i>
    </xsl:variable>
    
    
    <!-- TEMPLATES et REGLES DE TRANSFORMATION XSLT-->
    
    <xsl:template match="/"><!--template général sur la racine-->
        <xsl:call-template name="accueil"/><!-- appel du template de la page d'accueil -->
        <xsl:call-template name="chapitre_10"/><!-- appel du template du chapitre X -->
        <xsl:call-template name="index"/><!-- appel du template de l'index -->
    </xsl:template>
    
    

    <!-- TEMPLATE DE LA PAGE D'ACCUEIL -->
    
    <xsl:template name="accueil">
        <xsl:result-document href="{$accueil}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$head"/>
                <body>
                    <xsl:copy-of select="$header"/>
                        <div>
                            
                            <p>
                    <a href="./{$chap10}">Chapitre X</a> – <a href="./{$index}">Index.</a></p>
                        </div>
                    
                    
                        <!-- PRESENTATION -->
                    
                        <h5><b>Présentation du projet</b></h5>
                        <p>Ce projet est une transformation en XHTML de l'encodage réalisé dans le cadre du cours de XML/TEI d'un chapitre du roman <i><xsl:value-of select="//fileDesc/titleStmt/title[@level='m']"/></i> écrit par <xsl:value-of select="concat(//titleStmt/author/persName/forename,' ', //titleStmt/author/persName/surname)"/> en 1872, et plus précisément du chapitre X <i><xsl:value-of select="//titleStmt/title[@level='a']"/></i>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="//p[@n='1']"/></p>La version numérisée du chapitre dans le journal <i>Le Temps</i> est disponible <a><xsl:attribute name="href"><xsl:value-of select="//fileDesc/publicationStmt/distributor/@facs"/></xsl:attribute> à cette adresse.
                            </a>

                        <h5><b>Présentation des personnages</b></h5>
                        <ol>
                            <xsl:for-each select="//particDesc//person">
                                <xsl:choose>
                                    <xsl:when test=".//forename">
                                        <ul style="list-style-type: disc;">
                                        <li>
                                            <b>
                                                <a>
                                                <xsl:attribute name="href"><xsl:value-of select="./persName/@ref"/></xsl:attribute>
                                                <xsl:value-of select="concat(.//forename, ' ', .//surname)"/></a></b>. <xsl:value-of select=".//note"/>
                                        </li>
                                        </ul>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <ul style="list-style-type: disc;">
                                        <li>
                                        <b><xsl:value-of select=".//persName"/></b>. <xsl:value-of select=".//note"/>
                                    </li>
                                    </ul>
                                    </xsl:otherwise>
                                </xsl:choose>                           
                            </xsl:for-each>
                        </ol>
                    <xsl:copy-of select="$footer"/>
                </body>
            </html>
        </xsl:result-document>        
    </xsl:template>
    


    
    <!-- TEMPLATE DE LA PAGE DU CHAPITRE ENCODE -->    
    
    <xsl:template name="chapitre_10">
        <xsl:result-document href="{$chap10}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$head"/>
                <body>                    
                    <xsl:copy-of select="$header"/>
                    <main>                  
                            <div>
                                <p>
                                    <a href="./{$accueil}">Accueil</a> – <a href="./{$index}">Index.</a></p>
                            </div>
                        <h5><b>Chapitre encodé</b></h5>
                        <xsl:for-each select="//body//p">
                            <p><xsl:value-of select="./text() | .//persName | .//rs | .//said | .//placeName | .//emph "/></p>
                        </xsl:for-each>
                    </main>                                
                    <xsl:copy-of select="$footer"/> 
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>

    
    
    <!-- TEMPLATE DE LA PAGE DE L'INDEX -->  
    
    <xsl:template name="index">
        <xsl:result-document href="{$index}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$head"/>
                <body>                    
                    <xsl:copy-of select="$header"/>
                    <main>       
                      <div>
                                <p>
                                    <a href="./{$chap10}">Chapitre X</a> – <a href="./{$accueil}">Accueil.</a></p>
                            </div>
                        
                        <div title="titre_intro"><h5><b>Lieux mentionnées (par odre d'apparition)</b></h5></div>
                        <ol>
                            <xsl:for-each select="//settingDesc//place">
                                <ul style="list-style-type: disc;">
                                    <li>
                                    <b>
                                        <xsl:choose>
                                            <xsl:when test="./placeName/@ref">
                                                <a>
                                                    <xsl:attribute name="href"><xsl:value-of select="./placeName/@ref"/></xsl:attribute>
                                                    <xsl:value-of select="./placeName/name"></xsl:value-of>
                                                </a>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="./placeName/name"></xsl:value-of>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </b>
                                    :
                                    <xsl:value-of select=".//region"></xsl:value-of>, <xsl:value-of select="./@type"></xsl:value-of>
                                    </li>
                                </ul>
                            </xsl:for-each>
                        </ol>
                    </main>                                
                    <xsl:copy-of select="$footer"/> 
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
 
    

</xsl:stylesheet>