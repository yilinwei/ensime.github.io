---
layout: page
order: 1
title: Ideas
---

# Google Summer of Code Project Ideas

## ENSIME Graphpocolypse

A number of missing features and possible new features are not possible in ENSIME without additional information being
made available by the Indexer.  The plan is to add a graph database capturing relationship information into the indexer
to enable new features.  More details about the current thinking can be found in this
 [issue](https://github.com/ensime/ensime-server/issues/1133).  This can then be used to implement features such as:

* Find usages
* Show hierarchy
* Unused methods

Mentored by @fommil and/or @a_dev_musing

## ENSIME support for Dotty

The goal of this project is to support Dotty in ENSIME.  Doing so gives Dotty developers and users IDE features which
are not currently available.  This work involves isolating the compiler interactions within ENSIME and providing
a cleaner interface to the presentation compiler.  This then allows the swapping in of the Dotty compiler.  This project
allows the student a great chance to explore the new Dotty compiler and help towards the future of the Scala language.

Mentored by @fommil and/or @a_dev_musing

## ENSIME Build tool integration

A project to provide better build tool (e.g. Sbt/Gradle) integration with ENSIME.
ScalaIDE wraps components of SBT to provide compile integration.  It would be great if
ENSIME could do something similar, but in a generic way (i.e. with all supported build tools).  A generic interface
 and integration modules would allow better compilation support.

Mentored by @fommil and/or @a_dev_musing

## ENSIME Syntax Trees

This project is to build an independent parser representation of a file which contains information for all of the
information in the file (including, for example, whitespace). Including some limited support for lensed interaction with
the main Scala AST. For example for refactoring it would be useful to go from a Range within the Scala AST to an EST
position allowing refactoring to be done taking the fully text structure into account.  This opens up possibilities for
various use cases including better refactoring support and formatting.

Mentored by @fommil and/or @a_dev_musing

## ENSIME Passive Hints Framework

[passive hints #848](https://github.com/ensime/ensime-server/issues/848) (ala quick fixes in IntelliJ IDEA)
The aim of this project is to provide the tooling necessary to create 'quick-fix' support in ENSIME.  Possibly in
collaboration with a linting tool to help developers improve their code.

Mentored by @fommil and/or @a_dev_musing

For now, here are some possible ideas:


## ENSIME Pop up docs and better documentation support.

[popup docs #888](https://github.com/ensime/ensime-server/issues/888)

The goal of this project is to improve access to documentation for ENSIME users.
Users already have jump to documentation (serviced by a webserver built into ENSIME), but would benefit from the same
'pop-up-doc' feature seen in IDEA and ScalaIDE.  The served documentation can also be improved to show sources (with
cross linking) and better documentation search features.

Mentored by @fommil and/or @a_dev_musing

## ENSIME Bug and feature hunt

There are lots of open tickets in the [ENSIME issue tracker](https://github.com/ensime/ensime-server).  Some of which
are no longer relevant or valid.  This project would be about tackling as many of them as time permits.
It will be a good chance to learn about the ENSIME and the presentation compiler infrastructure.
So issues may be simple some much more challenging but addressing them (reviewing, exploring, fixing) will have
a huge impact on the project as a whole.

## ENSIME based program improvement tools

Using ENSIME as an analysis and manipulation tool rather than an IDE.  ENSIME can be used to create code manipulation
tools such as:

- Dead code discovery / removal
- Adding types to public methods
- Linting/error discovery
The goal of this project is to create tooling around ENSIME to make it easier to build these kind of tools and then
implement one or more such tools.

Mentored by @fommil and/or @a_dev_musing

