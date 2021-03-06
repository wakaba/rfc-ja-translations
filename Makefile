XT = java -Dcom.jclark.xsl.sax.parser=org.apache.xerces.parsers.SAXParser com.jclark.xsl.sax.Driver
XSLT = D:/home/suika/cvs/tool/rfc/translation/rfc_ja.xsl
U8toJ7 = perl D:/home/wakaba/temp/t/u8tojis7.pl

RMV = rm -rv

%.u8: %.rfcja $(XSLT)
	$(XT) $< $(XSLT) $@
%.html: %.u8
	$(U8toJ7) $< > $@

clean:
	$(RMV) *~ .*~ *.BAK .*.BAK
