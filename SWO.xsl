<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
            div
            {
                text-align:center;
                width:48%;
                border:2px solid black;
            }
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Student Welfare Office</h1>
		<center><img src="SWO .png" width="400" height="300" /></center>
		<div class='Student' style="float:left;">
                    <h2>Student Heads</h2>
                    <table border="2" align="center">
                        <tr bgcolor="#0000FF">
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">Committee</th>
                            <th style="text-align:left">Class</th>
                            <th style="text-align:left">Stipend</th>
                        </tr>
                        <xsl:for-each select="SWO/Student">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Committee"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Class"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Stipend"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>


                <div class='Faculty'  style="float:right;">
                    <h2>Faculty Heads</h2>
                    <table border="2"  align="center">
                        <tr bgcolor="#0000FF">
                            <th style="text-align:left">Name</th>
                            <th style="text-align:left">Designation</th>
                        </tr>
                        <xsl:for-each select="SWO/Faculty">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Designation"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
