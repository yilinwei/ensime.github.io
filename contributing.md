---
layout: page
order: 10
title: Contributing
site_nav_entry: true # this is an entry in the main site nav
---

The first thing to do is to check out the code for the component that you want to work on [github.com/ensime](https://github.com/ensime/) and ask questions on gitter or create a github ticket and make it clear that you'd like to work on something. We have regular Hack Days in London, so ask about those if you're interested (or join us remotely).

The general architecture looks like this:

![architecture](/talks/scalasphere16/images/architecture.png)

which is explained in a recent [talk about ENSIME](/talks/scalasphere16/images/architecture.png).

The server API is documented in [org/ensime/api](https://github.com/ensime/ensime-server/tree/master/api/src/main/scala/org/ensime/api)
with example JSON payloads in [org/ensime/jerky](https://github.com/ensime/ensime-server/blob/master/protocol-jerky/src/test/scala/org/ensime/jerk/JerkFormatsSpec.scala)

## Compiling `ensime-server`

**Notice**: Please make sure to install [sbt-extras](https://github.com/paulp/sbt-extras), otherwise project compilation might fail with a `java.lang.OutOfMemoryError` or `java.lang.StackOverflowError`.

Before you start, run this SBT command on your `ensime-server` repository:
```
sbt gen-ensime
```

You will use the following commands to compile the server, tests and integration tests:

```
sbt compile
sbt test:compile
sbt it:compile
```

FIXME: needs a lot more info

## Installing the server from assembly builds

If an `-assembly.jar` file exists in your `.emacs.d/ensime` directory (for the expected binary version of scala and ENSIME) then it will always be used in preference to the `sbt` auto-update procedure. Some of the other editors may also support this feature.

This is advantageous for developing on ENSIME and also to enable a simple install of the ENSIME server in restricted environments. SNAPSHOT assembly jars are provided at http://ensime.typelevel.org/ (with many thanks to typelevel for the use of their servers).

To build your own server jars, do this:

```
git clone https://github.com/ensime/ensime-server.git
sbt ++2.10.6 ensime/assembly # replace with your version of scala
cp target/scala-2.10/ensime_2.10-0.9.10-SNAPSHOT-assembly.jar ~/.emacs.d/ensime/
```

When you want to swap back to using official releases, delete your `-assembly.jar` files.

## Installing ensime-sbt from source

```
git clone https://github.com/ensime/ensime-sbt.git
sbt publishLocal
rm -rf ~/.ivy2/cache/scala_2.10/sbt_0.13/org.ensime # clears official snapshots
```

(changing as appropriate for backports to other versions of sbt)

When you want to swap back to using official snapshots, clear out your `~/.ivy2/local`.
