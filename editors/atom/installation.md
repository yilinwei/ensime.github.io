---
layout: section
order: 1
title: Installation
---

## Prerequisites

Before you start make sure you have:

- [sbt] installed;
- generated a _.ensime_ for your project running the [gen-ensime] command from sbt; and
- [Atom] installed.

## Installing Atom ENSIME

Inside Atom:

- Open _Preferences_
- Click _Install_
- Search for _ENSIME_ in the search box.
- Click _Install_.

Finally, you need to tell Atom where sbt is installed:

- Open _Preferences_ in Atom
- In _Packages_, search for _ENSIME_.
- Click _Settings_.
- In the _Sbt Exec_ box, enter the path to the _sbt_ command.

For example, enter _/usr/local/bin/sbt_ if there's where sbt is for you.

## Using Atom

- Open any folder that contains a _.ensime_ in the root
- cmd-shift-P _ENSIME: Start_
- Then you can use the features above!

Every command in ENSIME can be found using cmd-shift-P and typing "ensime".

## Related Atom Packages

The following are automatically installed by Atom ENSIME:

- [language-scala] for syntax highlighting.
- [hyperclick] for code navigation. ENSIME hooks in as provider.
- [browser-plus] to display ScalaDoc.


These are recommended:

- [Project manager] which is handy to keep track of projects.

- Need plugin to navigate back to last cursor position when "code surfing". Maybe [last cursor position].


[sbt]: http://www.scala-sbt.org/download.html
[gen-ensime]: /build_tools/sbt/
[language-scala]: https://atom.io/packages/language-scala
[hyperclick]: https://atom.io/packages/hyperclick
[browser-plus]: https://atom.io/packages/browser-plus
[Project manager]: https://github.com/danielbrodin/atom-project-manager
[last cursor position]: https://atom.io/packages/last-cursor-position
[Atom]: https://atom.io/

