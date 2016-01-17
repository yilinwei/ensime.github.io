---
layout: subpage
section: /editors/emacs/
order: 7
title: Build and REPL
---

ENSIME assumes that your project is set up to be built with an existing build tool (sbt, make, maven, etc.)

### SBT Support
There is support for starting SBT within emacs. Type `C-c C-b s` to start an SBT inferior process. The following shortcuts send commands to SBT from a scala buffer: `C-c C-b c` (compile), `C-c C-b r` (run), `C-c C-b n` (clean), `C-c C-b p` (package).

The SBT buffer will highlight compiler errors. Click on an error to jump to the source location.  Similarly, stacktraces from exceptions are converted to links to source locations.

The variable `ensime-sbt-perform-on-save` lets you specify an action to send to the SBT process whenever you save a scala file. The default is `compile`.

### The Scala REPL

First, ensure that you've set the :target directive in your config file and that your project is compiled. The REPL will load your project classes from the :target directory. Then, type `C-c C-v z` to launch the embedded Scala REPL. The REPL should be launched with all your project classes loaded and available.

The SCALA REPL mode highlights stacktraces and lets you jump to source locations.

[ TODO: document REPL features: load-file, eval buffer, eval region, etc. ]

