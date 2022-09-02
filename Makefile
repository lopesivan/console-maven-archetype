XML=\
	pom.xml \
	src/main/resources/META-INF/maven/archetype-metadata.xml\
    src/main/resources/archetype-resources/pom.xml\
    src/main/resources/archetype-resources/src/main/resources/log4j2.xml

all: $(XML)
pom.xml: installer.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/META-INF/maven/archetype-metadata.xml: config.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/archetype-resources/pom.xml: app.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/archetype-resources/src/main/resources/log4j2.xml: log4j2.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

install:
	mvn install

clean:
	rm pom.xml
	rm src/main/resources/META-INF/maven/archetype-metadata.xml
	rm src/main/resources/archetype-resources/pom.xml
	rm src/main/resources/archetype-resources/src/main/resources/log4j2.xml
