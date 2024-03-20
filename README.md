#console-maven-archetype

Project provides Console aplication archetype for creating
comand line aplications

##Installation

Clone this repository

```bash
$ git clone https://github.com/lopesivan/console-maven-archetype.git
```

Install it to local Maven repository

```bash
$ cd console-maven-archetype
$ mvn install
```

Create project based on this archetype

```bash
$ mvn archetype:generate \
    -DarchetypeGroupId=project._42algoritmos \
    -DarchetypeArtifactId=console-app-archetype \
    -DarchetypeVersion=1.0.5
```

Não interativo

```bash
mvn archetype:generate \
    -DarchetypeArtifactId=console-app-archetype \
    -DartifactId="myproject" \
    -DgroupId="br.eng.ivanlopes" \
    -DarchetypeGroupId=project._42algoritmos \
    -DarchetypeVersion="1.0.5" \
    -DarchetypeCatalog=local \
    -DinteractiveMode=false
```

Run project:

```bash
$ mvn exec:java
```

## Estrutura

    $ tree src/
    src/
    ├── main
    │   └── resources
    │       ├── archetype-resources
    │       │   ├── pom.xml
    │       │   └── src
    │       │       └── main
    │       │           ├── java
    │       │           │   └── App.java
    │       │           └── resources
    │       │               └── log4j2.xml
    │       └── META-INF
    │           └── maven
    │               └── archetype-metadata.xml
    └── test
        └── resources
            └── projects
                └── basic
                    ├── archetype.properties
                    └── goal.txt

    13 directories, 6 files

Local

    JAVA_HOME=$(jenv  javahome) ./mvnw compile
    JAVA_HOME=$(jenv  javahome) ./mvnw exec:java
