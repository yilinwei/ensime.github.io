---
layout: section
order: 10
title: Troubleshooting
---

Thank you for using ENSIME on Atom!

Most tickets can be resolved easily by following a simple process.

0. fully compile your project
1. nuke old versions of the ENSIME server and cached classpaths
   - `rm -rf ~/.ivy2/cache/org.ensime`
   - `rm -rf ~/.ivy2/local/org.ensime`
   - `rm -rf ~/.coursier/cache/v1/https/oss.sonatype.org/content/repositories/snapshots/org/ensime/`
   - `rm -rf ~/.atom/packages/Ensime/classpath*`
   - `rm -rf ~/.atom/packages/Ensime/*assembly.jar`
2. use the latest release of `ensime` for Atom. `apm install ensime`
3. check the [tickets flagged as FAQ for Atom](https://github.com/ensime/ensime-atom/issues?labels=FAQ).
4. check the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
5. search for duplicates, especially the [most recently updated tickets](http://github.com/ensime/ensime-atom/issues?direction=desc&sort=updated)

If that solved your problem, great!

If not, please join the conversation on the `gitter.im` room [ensime-atom](https://gitter.im/ensime/ensime-atom). 

If you think you've found a bug you can file it at [https://github.com/ensime/ensime-atom/issues/new](https://github.com/ensime/ensime-atom/issues/new) (you'd don't need to ask on the channel, just go right ahead and create a ticket).
