This uses the WPS XSLT process on gori.  

MOST OF THIS IS STILL BASED ON GDAS 0.10.2


gdashash2.xsl  Simple local reference to hashtable.xml

http://gori:8080/nlwis_ws/Transform/service.wps?service=WPS&request=Execute&version=0.4.0&Identifier=Xslt&DataInputs=xslURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2Fgdashash2.xsl;xmlURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2FGDAS_Nominal_EcozoneMaterial.xml


gdashash3.xsl  Pass file name as a parameter to hashtable.

http://gori:8080/nlwis_ws/Transform/service.wps?service=WPS&request=Execute&version=0.4.0&Identifier=Xslt&DataInputs=xslURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2Fgdashash3.xsl;xmlURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2FGDAS_Nominal_EcozoneMaterial.xml;Params=name%28hashurl%28hashtable.xml%29%29


gdashash4.xsl rebuilds gdashash.xsl, which still has some good stuff on passing text

http://gori:8080/nlwis_ws/Transform/service.wps?service=WPS&request=Execute&version=0.4.0&Identifier=Xslt&DataInputs=xslURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2Fgdashash4.xsl;xmlURL=http%3A%2F%2Fwms1.agr.gc.ca%2Fschut%2Fhash%2FGDAS_Nominal_EcozoneMaterial.xml;Params=name%28hashurl%28hashtable_nominal.xml%29%29


Also, check out the WIKI, at http://giswiki.agr.gc.ca/nlwPrototypeServices.  Relevant text below is extracted:

<br/><div class="titlebar">Interpreting GDAS using Hash Tables</div>
<br/>Simple Nominal to Nominal interpretation
<br/>
<br/><ul><li><a class='wiki' target="_blank" href='http://gori.agr.gc.ca/hash/hashtable_nominal.xml '> Hash table (XML)</a>
</li><li><a class='wiki' target="_blank" href='http://gori.agr.gc.ca/hash/hash2html2.xsl '> Hash table XML to HTML converter (XSL)</a>
</li><li><a class='wiki' target="_blank" href='http://gori.agr.gc.ca/hash/hashtable_nominalxsl.xml '> Hash table (HTML)</a>
</li></ul>
<br/><ul><li><a class='wiki' target="_blank" href='http://gori.agr.gc.ca/hash/gdashash4.xsl '> GDAS Hash Table converter (XSL) </a>

</li></ul>
<br/><ul><li><a class='wiki' target="_blank" href='http://gori.agr.gc.ca/hash/GDAS_Nominal_EcozoneMaterial.xml '> GDAS data to be transformed (XML)</a>
</li></ul>
<br/><ul><li> <a class='wiki' target="_blank" href='http://gori:8080/nlwis_wps/Transform/service.wps?service=WPS&amp;request=Execute&amp;version=0.4.0&amp;Identifier=Xslt&amp;DataInputs=xslURL=http%3A%2F%2Fgori.agr.gc.ca%2Fhash%2Fgdashash4.xsl;xmlURL=http%3A%2F%2Fgori.agr.gc.ca%2Fhash%2FGDAS_Nominal_EcozoneMaterial.xml;Params=name%28hashurl%28hashtable_nominal.xml%29%29'>Execute a hash table interpretation</a>
</li></ul>
<br/>
