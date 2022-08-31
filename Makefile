pom.xml: pom.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

clean:
	rm pom.xml
