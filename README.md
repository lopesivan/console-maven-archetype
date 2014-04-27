#console-maven-archetype

Project provides Console aplication archetype for creating comand line aplications

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
    -DarchetypeVersion=1.0.2
```

Run project:

```bash
$ mvn exec:java
```
