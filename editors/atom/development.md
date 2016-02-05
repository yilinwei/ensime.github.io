---
layout: section
order: 2
title: Developing
---

## Working with the Atom ENSIME Source

The basic cycle for interactive hacking on Atom ENSIME is: checkout the project (or a fork), install the package from your fork. Then: make edits, re-load Atom, repeat. Feel free to chat on gitter, and send a pull request.

In detail:

- Checkout the project from: https://github.com/ensime/ensime-atom

- Either checkout straight into _.atom/packages_ (or `ln -s` from there to your checkout). You need to have the right name on the folder: "Ensime".

- From that directory run: `apm install`.

- In Atom: "Window: reload" (ctrl-option-cmd l) to reload plugin from source while developing.  Then start ENSIME in Atom as usual.

- View / Developer / Toggle Developer Tools gives you the usual console and other inspectors.


## Tricks and tips

### Access ENSIME from the console

In the developer console, you can look up the package like this:

```
e = atom.packages.getActivePackage('Ensime').mainModule
```

From there you can access other parts of the package. E.g.,

```
client = e.clientOfEditor(atom.workspace.getActiveTextEditor())
```


## Inspiration (steal if you can)

- [Atom IDE support for Flow](https://github.com/lukehoban/atom-ide-flow/)
- [Atom TypeScript](https://github.com/TypeStrong/atom-typescript/)
- [IDE-Haskell](https://github.com/atom-haskell/ide-haskell)

## Useful Links

- [Atom Flight Manual](https://atom.io/docs) - see Chapter 3, _Hacking Atom_ in particular.
- [ENSIME project source](https://github.com/ensime/)
- [Swank Protocol source](https://github.com/ensime/ensime-server/blob/master/swank/src/main/scala/org/ensime/server/protocol/swank/SwankFormats.scala)
- [Jerk Formats](https://github.com/ensime/ensime-server/blob/master/protocol-jerky/src/test/scala/org/ensime/jerk/JerkFormatsSpec.scala)
- [Emacs command cheat sheet](ditors/emacs/cheat_sheet/)
- [ENSIME Google Group](https://groups.google.com/forum/#!forum/ensime)
- [Startup of server from Emacs](https://github.com/ensime/ensime-emacs/blob/master/ensime-startup.el)
- [Space pen]( https://github.com/atom/space-pen/blob/master/src/space-pen.coffee)
- [Space pen views]( https://github.com/atom/atom-space-pen-views/blob/master/src/scroll-view.coffee)
- [Find and replace](https://github.com/atom/find-and-replace/blob/master/lib/project/results-pane.coffee)

