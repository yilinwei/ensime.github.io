---
layout: section
order: 1
title: Ideas
---

This page will probably contain GSoC proposal.
For now, here are some possible ideas:

- [popup docs #888](https://github.com/ensime/ensime-server/issues/888)  Surfacing Doc fragements within the editor and improving the web served documentation views.
- Build tool integration - ScalaIDE wraps components of SBT to provide compile integration.  It would be great if ENSIME could do something similar, but in a generic way (i.e. with all supported buid tools).  A generic interface and integration modules would allow better compilation support.
- [passive hints #848](https://github.com/ensime/ensime-server/issues/848) (ala quick fixes in IntelliJ)
- Static analysis, improving the internal model within ENSIME to allow code analysis of Scala projects, either small scale (you dereference null in this function) or large scale (dead code discovery/removal)
  - Dead code discovery / removal
  - Add types to all public methods
  - linting/program error discovery
- [natural search for type #472](https://github.com/ensime/ensime-server/issues/472)
- ENSIME profiling - capturing user statistics and aggregation to provide application hotspots, whilst maintaining user privacy.
- 
- [anything with the OMG Pony tag](https://github.com/ensime/ensime-server/issues?q=is%3Aopen+is%3Aissue+label%3A%22OMG%21+Ponies%21%22)
