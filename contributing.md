---
layout: page
order: 10
title: Contributing
site_nav_entry: true # this is an entry in the main site nav
---

The first thing to do is to check out the code for the component that you want to work on [github.com/ensime](https://github.com/ensime/) and ask questions on gitter or create a github ticket and make it clear that you'd like to work on something. We have regular Hack Days in London, so ask about those if you're interested (or join us remotely).

The general architecture looks like this:

![architecture](/talks/scaladays15/images/architecture.png)


The server API is documented in [org/ensime/api](https://github.com/ensime/ensime-server/tree/master/api/src/main/scala/org/ensime/api)
with example JSON payloads in [org/ensime/jerky](https://github.com/ensime/ensime-server/blob/master/protocol-jerky/src/test/scala/org/ensime/jerk/JerkFormatsSpec.scala)

##Compiling `ensime-server`

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

TODO: needs a lot more info
