VERSION    = 1.0.4
GROUPID    = project/_42algoritmos
ARTIFACTID = console-app-archetype

XML=\
	pom.xml \
	src/main/resources/META-INF/maven/archetype-metadata.xml\
    src/main/resources/archetype-resources/pom.xml\
    src/main/resources/archetype-resources/src/main/resources/log4j2.xml

all: $(XML)

pom.xml: installer.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/META-INF/maven/archetype-metadata.xml: config.haml
	mkdir -p src/main/resources/META-INF/maven
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/archetype-resources/pom.xml: app.haml
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

src/main/resources/archetype-resources/src/main/resources/log4j2.xml: log4j2.haml
	mkdir -p src/main/resources/archetype-resources/src/main/resources
	haml -f xhtml --double-quote-attributes $^ | xmllint --format - > $@

install:
	mvn install

uninstall:
	rm -rf ${HOME}/.m2/repository/$(GROUPID)/$(ARTIFACTID)/$(VERSION)

clean:
	rm pom.xml
	rm src/main/resources/META-INF/maven/archetype-metadata.xml
	rm src/main/resources/archetype-resources/pom.xml
	rm src/main/resources/archetype-resources/src/main/resources/log4j2.xml
