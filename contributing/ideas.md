---
layout: section
order: 1
title: Ideas
---

# Google Summer of Code Project Ideas

## ENSIME Graphpocolypse

A number of missing features and possible new features are not possible in ENSIME without additional information being made available by the Indexer.  The plan is to add a graph database capturing relationship information into the indexer to enable new features.  More details about the current thinking can be found in this [issue](https://github.com/ensime/ensime-server/issues/1133).  This can then be used to implement features such as
* Find usages
* Show hierarchy
* Unused methods

Mentored by @fommil and/or @a_dev_musing

## Passive Hints Framework

[passive hints #848](https://github.com/ensime/ensime-server/issues/848) (ala quick fixes in IntelliJ IDEA)
The aim of this project is to provide the tooling necessary to create 'quick-fix' support in ENSIME.  Possibly in collaboration with a linting tool to help developers improve their code.

Mentored by @fommil and/or @a_dev_musing

For now, here are some possible ideas:

## Pop up docs

[popup docs #888](https://github.com/ensime/ensime-server/issues/888)  Surfacing Doc fragments within the editor and improving the web served documentation views.

Mentored by @fommil and/or @a_dev_musing

## ENSIME support for Dotty

Dotty does not currently have IDE support.  Allowing the compiler component in Ensime to be replaced by the Dotty compiler will give IDE support (typechecking, completions etc) to Dotty developers and users.

Mentored by @fommil and/or @a_dev_musing

## Build tool integration

- Build tool integration - ScalaIDE wraps components of SBT to provide compile integration.  It would be great if ENSIME could do something similar, but in a generic way (i.e. with all supported build tools).  A generic interface and integration modules would allow better compilation support.

Mentored by @fommil and/or @a_dev_musing

## ENSIME Bug and feature hunt

There are lots of open tickets in the [ENSIME issue tracker](https://github.com/ensime/ensime-server).  Some of which
are no longer relevant or valid.  This project would be about tackling as many of them as time permits.
It will be a good chance to learn about the ENSIME and the presentation compiler infrastructure.
So issues may be simple some much more challenging but addressing them (reviewing, exploring, fixing) will have 
a huge impact on the project as a whole.

## Program improvement tools

Using ENSIME as an analysis and manipulation tool rather than an IDE.  ENSIME can be used to create code manipulation tools such as:
- Dead code discovery / removal
- Adding types to public methods
- Linting/error discovery
The goal of this project is to create tooling around ENSIME to make it easier to build these kind of tools and then implement one or more such tools.

Mentored by @fommil and/or @a_dev_musing

