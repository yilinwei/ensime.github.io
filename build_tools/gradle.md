---
layout: section
order: 6
title: Gradle
---

This [Gradle](https://gradle.org) plugin will create .ensime configuration files for projects using the [`java`](https://docs.gradle.org/current/userguide/java_plugin.html), [`scala`](https://docs.gradle.org/current/userguide/scala_plugin.html) or [`gradle-android-scala-plugin`](https://github.com/saturday06/gradle-android-scala-plugin) plugins for use with an [ENSIME server](https://github.com/ensime/ensime-server)

Note that this does not support the new [software model](https://docs.gradle.org/current/userguide/pt06.html) configuration or the [Play Framework](https://playframework.com) [plugin](https://docs.gradle.org/current/userguide/play_plugin.html).  Yet.

The source for this plugin is found in its own GitHub project [ensime/ensime-gradle](https://github.com/ensime/ensime-gradle)

## Install
The decision to use ENSIME is per-user, rather than per-project. Add the following snippet to your `~/.gradle/init.gradle` file:

```groovy
apply plugin:AddDepPlugin

class AddDepPlugin  implements Plugin<Gradle> {
  def addDeps = ["org.ensime.gradle": "gradle.plugin.net.coacoas.gradle:ensime-gradle:0.2.2"]
  def addRepos = ["https://plugins.gradle.org/m2/"]

  void apply(Gradle gradle) {
    def add = 0
    gradle.allprojects { project ->
      plugins.whenPluginAdded { t ->
        if (++add == 1) {
          project.getBuildScriptSource()
          def bs = project.getBuildscript()
          bs.getDependencies()
          def repo = bs.getRepositories()
          def ccf = bs.class.getDeclaredField("classpathConfiguration")
          ccf.setAccessible(true)
          def cc = ccf.get(bs)
          addDeps.each { k,v-> cc.dependencies.add(project.dependencies.create(v))}
          addRepos.each { k-> repo.maven { -> setUrl(k) } }
        }
        if (add == 8)
          addDeps.each { k,v ->
            if (!k.startsWith("x")) project.apply([plugin: k])
          }
      }
    }
  }
}
```

### Using the plugin in your build

For gradle 2.1+ 

```groovy
plugins {
  id 'org.ensime.gradle' version '0.2.2'
}
```

For older versions:

```groovy
buildscript { 
  repositories { 
    jcenter()
  }

  dependencies {
    classpath 'net.coacoas.gradle:ensime-gradle:0.2.2'
  }
}
```

To use SNAPSHOT builds, 

```groovy
buildscript { 
  repositories { 
    maven { 
      url 'https://oss.jfrog.org/oss-snapshot-local'
    }
  }

  dependencies {
    classpath 'net.coacoas.gradle:ensime-gradle:0.2.3-SNAPSHOT'
  }
}
```

### Configuring ENSIME

For the most part, the default configuration options should be
enough, and simply executing the `ensime` task should be enough
to create a proper .ensime file.

In rare cases, some additional elements may need to be configured
inside the build.gradle file.  For these cases, an `ensime` block
should be used to indicate these options.

Example:

```groovy
ensime {
  scalaVersion   '2.11.7'
  cacheDir       file('.ensime.cache.d')

  javaFlags      '-Xlint', '-wahoowa'
  compilerArgs   '-Xlint'
}
```

#### Formatting Preferences

To configure Scalariform options for ENSIME's code formatting 
capabilities, add a formattingPrefs section.  Each option 
will be added to the .ensime file as a formatting option. 

Example:

```groovy
ensime { 
  formattingPrefs { 
    indentSpaces   4
    indentWithTabs false
  }
}
```

### Running the task

The plugin adds the 'ensime' task to the project to create a .ensime file in the project directory.

```bash
./gradlew ensime
```

Each time the task is executed, the .ensime file will be regenerated.

## Requirements

As of version 0.2.0, the ensime plugin requires Gradle 2.x. 
