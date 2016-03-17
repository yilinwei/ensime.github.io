---
layout: page
order: 1
title: Getting Started
site_nav_entry: true # this is an entry in the main site nav
---

Fantastic, and welcome!

ENSIME is a JVM process that indexes your dependencies and understands your source code using the [scala interactive compiler](http://www.scala-lang.org/files/archive/nightly/docs/compiler/index.html#scala.tools.nsc.interactive.package) - the same compiler that compiles your code.

It is important to realise that ENSIME is not an IDE, it is just one tool in a toolbox, following the UNIX philosophy of [Do One Thing and Do It Well](https://en.wikipedia.org/wiki/Unix_philosophy#Do_One_Thing_and_Do_It_Well).

You need a build tool to compile your source code into binaries, and you need a text editor to be able to change your source code.

1. The first step towards using ENSIME is to make sure that you are using a [build tool that is supported](/build_tools/) which will generate a `.ensime` file so that you can start the server.
2. Then you'll need to install a [text editor that is supported](/editors/).

If things don't work as you expected, please read the [Getting Help](/getting_help) guide before asking for help from the community.

We're all volunteers with our own priorities. The approach to your feature requests and bugs is "tell us what you want, and we'll be happy to help you to implement it". The ENSIME code is surprisingly easy to understand and modify: come to [Contributing](/contributing) to find out more about making it better.

All interactions in ENSIME are governed by the [Typelevel Code of Conduct](http://typelevel.org/conduct.html).
