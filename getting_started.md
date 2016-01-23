---
layout: page
order: 1
title: Getting Started
---

Fantastic, and welcome!

ENSIME is a JVM process that indexes your dependencies and understands your source code using the [scala interactive compiler](http://www.scala-lang.org/files/archive/nightly/docs/compiler/index.html#scala.tools.nsc.interactive.package) -- the same compiler that compiles your code.

It is important to realise that ENSIME is not an IDE, it is just one tool in a toolbox, following the UNIX philosophy of [Do One Thing and Do It Well](https://en.wikipedia.org/wiki/Unix_philosophy#Do_One_Thing_and_Do_It_Well). You still need a build tool to compile your source code into binaries, and you need a text editor to be able to change your source code.

1. The first step towards using ENSIME is to make sure that you are using a [build tool that is supported](/build_tools/). You'll install a plugin for your build tool which will create a `.ensime` file containing enough information about your project for ENSIME to be able to load it up. ENSIME works best if you compile your project regularly.
2. Then you'll need to install a [text editor that is supported](/editors/). If you're coming from an IDE background you should spend some time learning about the different options. Emacs is the most supported editor, but has the steepest learning curve --- the rewards are well worth the effort.

If you need a helping hand getting started, please join the conversation on `gitter.im` for your chosen text editor and the community will be happy to help you:

- [`ensime-emacs`](https://gitter.im/ensime/ensime-emacs)
- [`ensime-atom`](https://gitter.im/ensime/ensime-atom)
- [`ensime-vim`](https://gitter.im/ensime/ensime-vim)
- [`ensime-sublime`](https://gitter.im/ensime/ensime-sublime)

If you get into trouble, please make sure to read the [Troubleshooting Guide](/editors/emacs/troubleshooting/) first (TODO: very emacs specific, generalise).

All interactions in ENSIME are governed by the [Typelevel Code of Conduct](http://typelevel.org/conduct.html). We're all volunteers, so the approach to feature requests and bugs is very much "tell us what you want, and we'll help you do that". The codebase is surprisingly easy to understand and we hope you'll enjoy the liberation of being able to hack your text editor using the language that you already love.
