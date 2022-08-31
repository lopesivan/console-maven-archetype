XML=\
	pom.xml \
	src/main/resources/META-INF/maven/archetype-metadata.xml\
    src/main/resources/archetype-resources/pom.xml

all: $(XML)
pom.xml: pom.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/META-INF/maven/archetype-metadata.xml: archetype-metadata.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/archetype-resources/pom.xml: app.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

clean:
	rm pom.xml
	rm src/main/resources/META-INF/maven/archetype-metadata.xml
	rm src/main/resources/archetype-resources/pom.xml
