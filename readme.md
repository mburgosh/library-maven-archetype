# Library Maven Archetype

A [Maven Archetype][maven-archetype] for generating new Maven-based libraries, fully prepared to take advantage of a CI process.

While it can be prepared for any CI service, it is meant to be used with [Travis CI][travis], acquiring the code from a [Github][github] repository and publishing into a [Bintray][bintray] one.

After running all the tests artifacts will be published into this repository, but the new project will be able to generate and publish also a Maven site, which, thanks to the [Docs Maven Skin][docs-skin], will show documentation and useful reports from Checkstyle, Findbugs and similar tools.

The Archetype will do little more than take care of configuration, setting up the POM and the Maven project is most of its job, and so it will include few files not related to this. Some useful things such as a readme, a gitignore and a license files are included, but the initial code will consists just of a few placeholder classes.

[![Build Status](https://travis-ci.org/mburgosh/library-maven-archetype.svg?branch=master)](https://travis-ci.org/mburgosh/library-maven-archetype)
[![Maven Central](https://img.shields.io/maven-central/v/com.mburgosh.maven.archetypes/library-archetype.svg)][maven-repo]
[![Bintray](https://api.bintray.com/packages/mburgosh/maven/library-maven-archetype/images/download.svg)][bintray-repo]

[![Release docs](https://img.shields.io/badge/docs-release-blue.svg)][site-release]
[![Development docs](https://img.shields.io/badge/docs-develop-blue.svg)][site-develop]

## Features

- Fully configured POM, extending from [bernardomg's Base POM][base-pom], including features such as build validation, changes report or manifest configuration.
- Prepared for continuous integration with [Github][github], [Travis][travis] and [Bintray][bintray]. Making a distinction between releases and development versions.
- Prepared for unit and integration tests suites. Created with [JUnit][junit] and ready to be run with [Surefire][surefire] and [Failsafe][failsafe].
- A Maven site, using the [Docs Maven Skin][docs-skin], for sharing the project's documentation along the Javadocs and various reports which range from code quality to changes log.
- Includes basic files such as readme, gitignore and license.

## Sample project

A [sample project][sample-project] shows what this Archetype is capable of creating.

## Documentation

Documentation is always generated for the latest release, kept in the 'master' branch:

- The [latest release documentation page][site-release].

Documentation is also generated from the latest snapshot, taken from the 'develop' branch:

- The [latest snapshot documentation page][site-develop].

The documentation site is actually a Maven site, and its sources are included in the project. If required it can be generated by using the following Maven command:

```
$ mvn verify site
```

The verify phase is required, otherwise some of the reports won't be generated.

## Usage

The application is coded in Java, using Maven to manage the project.

It is a Maven Archetype, and can be used through command line or an IDE as long as it is included in the local repository.

### Prerequisites

The project has been tested on the following Java versions:
* JDK 8

All other dependencies are handled through Maven, and noted in the included POM file.

### Changing JDK Version

By default the project will be set for JDK 7. If this needs to be changed, for example to make use of JDK 8, the java.version property has to be overriden:

```xml
<properties>
   <java.version>1.8</java.version>
<\properties>
```

### Installing

The best way to install the Archetype is by downloading it from the [Bintray repository][bintray-repo]. It can be acquired from the [Maven Central Repository][maven-repo] too, but it is not recommended.

The Maven coordinates and URL for it are:

```
Group ID: com.bernardomg.maven.archetypes
Artifact ID: library-archetype
Version: (Check POM or badges)
URL: https://dl.bintray.com/mburgosh/maven/
```

For example, to use it through command line type the following:

```
$ mvn archetype:generate -DarchetypeGroupId=com.mburgosh.maven.archetypes -DarchetypeArtifactId=library-archetype -DarchetypeVersion=${project.version} -DarchetypeRepository=https://dl.bintray.com/bernardo-mg/maven/
```

If using an IDE check its documentation to find out how to use Maven Archetypes, and how to add these to the local repository.

As an alternative, it is always possible to download the project from Github, and then install it using the usual Maven command:

```
$ mvn install
```

### Running tests

The archetype plugin comes ready to run integration tests for the archetype by using the usual Maven command:

```
$ mvn verify
```

Check the [archetype testing goal][archetype-testing] for more info.

If using Eclipse the tests may not run, due to an incompatibility with the Maven Invoker library. It is recommender running the tests through command line.

## Collaborate

Any kind of help with the project will be well received, and there are two main ways to give such help:

- Reporting errors and asking for extensions through the issues management
- or forking the repository and extending the project

### Issues management

Issues are managed at the GitHub [project issues tracker][issues], where any Github user may report bugs or ask for new features.

### Getting the code

If you wish to fork or modify the code, visit the [GitHub project page][scm], where the latest versions are always kept. Check the 'master' branch for the latest release, and the 'develop' for the current, and stable, development version.

## License
The project has been released under the [MIT License][license].

[bintray-repo]: https://bintray.com/mburgosh/maven/library-maven-archetype/view
[maven-repo]: http://mvnrepository.com/artifact/com.mburgosh.maven.archetypes/library-archetype
[junit]: http://junit.org
[issues]: https://github.com/mburgosh/library-maven-archetype/issues
[license]: http://www.opensource.org/licenses/mit-license.php
[scm]: http://github.com/mburgosh/library-maven-archetype
[site-develop]: http://docs.mburgosh.com/library-maven-archetype/head
[site-release]: http://docs.mburgosh.com/library-maven-archetype

[maven-archetype]: https://maven.apache.org/guides/introduction/introduction-to-archetypes.html
[archetype-testing]: http://maven.apache.org/archetype/maven-archetype-plugin/integration-test-mojo.html

[sample-project]: https://github.com/Bernardo-MG/library-maven-archetype-example

[docs-skin]: https://github.com/Bernardo-MG/docs-maven-skin
[base-pom]: https://github.com/Bernardo-MG/base-pom

[github]: https://github.com/
[bintray]: https://bintray.com/
[travis]: https://travis-ci.org

[surefire]: https://maven.apache.org/surefire/maven-surefire-plugin/
[failsafe]: https://maven.apache.org/surefire/maven-failsafe-plugin/
