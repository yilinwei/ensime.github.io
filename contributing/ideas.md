---
layout: page
order: 1
title: Ideas
---

# Google Summer of Code Project Ideas

## Source Code Preserving AST

Scala refactoring support is currently limited because the compiler provides a typed Abstract Syntax Tree (AST) which does not preserve whitespace, comments or important syntactic features such as `for` comprehensions. Adding support for a so-called Concrete Syntax Tree (CST), preserving source code attributes, would overly complicate the compiler internals.

A complementary - source-code preserving - AST would enable ENSIME and Scala IDEs to implement and share type-aware refactorings, addressing a major complaint of the scala developer community.

Efforts such as [`scala.meta`](http://scalameta.org) have shown that it is extremely difficult to convert a typed AST into a source-code preserving AST. Instead of attempting full conversion, we propose to provide Lens-like objects that map a limited set of elements in a typed AST to elements into their source code AST, enabling a wide range of type-aware refactorings to be written.

Several parsers already exist for the scala language, but each falls short of the requirements of this exercise. Nevertheless, they serve as a good launchpad and may avoid the need to write a parser from scratch: `scala.meta`, [scalariform](https://github.com/scala-ide/scalariform), [fastparse](https://github.com/lihaoyi/fastparse/tree/master/scalaparse/shared/src/main/scala/scalaparse) and [parboiled2](https://github.com/sirthias/parboiled2/tree/release-2.1/scalaParser/src).

Mentored by `@fommil` and/or `@a_dev_musing`

## ENSIME Graphpocolypse

A number of missing features and possible new features are not possible in ENSIME without additional information being
made available by the Indexer.  The plan is to add a graph database capturing relationship information into the indexer
to enable new features.  More details about the current thinking can be found in this
 [issue](https://github.com/ensime/ensime-server/issues/1133).  This can then be used to implement features such as:

* Find usages
* Show hierarchy
* Unused methods

Mentored by `@fommil` and/or `@a_dev_musing`

## ENSIME support for Dotty

The goal of this project is to support Dotty in ENSIME.  Doing so gives Dotty developers and users IDE features which
are not currently available.  This work involves isolating the compiler interactions within ENSIME and providing
a cleaner interface to the presentation compiler.  This then allows the swapping in of the Dotty compiler.  This project
allows the student a great chance to explore the new Dotty compiler and help towards the future of the Scala language.

Mentored by `@fommil` and/or `@a_dev_musing`

## ENSIME Passive Hints Framework

[passive hints #848](https://github.com/ensime/ensime-server/issues/848) (ala quick fixes in IntelliJ IDEA)
The aim of this project is to provide the tooling necessary to create 'quick-fix' support in ENSIME.  Possibly in
collaboration with a linting tool to help developers improve their code.

Mentored by `@fommil` and/or `@a_dev_musing`

For now, here are some possible ideas:


## ENSIME Pop up docs and better documentation support.

[popup docs #888](https://github.com/ensime/ensime-server/issues/888)

The goal of this project is to improve access to documentation for ENSIME users.
Users already have jump to documentation (serviced by a webserver built into ENSIME), but would benefit from the same
'pop-up-doc' feature seen in IDEA and ScalaIDE.  The served documentation can also be improved to show sources (with
cross linking) and better documentation search features.

Mentored by `@fommil` and/or `@a_dev_musing`

## ENSIME based program improvement tools

Using ENSIME as an analysis and manipulation tool rather than an IDE.  ENSIME can be used to create code manipulation
tools such as:

- Dead code discovery / removal
- Adding types to public methods
- Linting/error discovery
The goal of this project is to create tooling around ENSIME to make it easier to build these kind of tools and then
implement one or more such tools.

Mentored by `@fommil` and/or `@a_dev_musing`
