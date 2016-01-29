---
layout: section
order: 2
title: Developing
---

## Working with the Atom Ensime Source

- Checkout the project from: https://github.com/ensime/ensime-atom

- Either checkout straight into _.atom/packages_ (or `ln -s` from there to your checkout). You need to have the right name on the folder: "Ensime".

- From the directory run: `apm install`.

- In Atom: "Window: reload" (ctrl-option-cmd l) to reload plugin from source while developing.

- In developer tools:

  ```
  client = atom.packages.getActivePackage('Ensime').mainModule.client
  client.getImportSuggestions('ApiLogRequest')
  ```


## Inspiration (steal if you can)

- https://github.com/lukehoban/atom-ide-flow/
- https://github.com/atom/atom/blob/master/src/text-editor-component.coffee#L365
- https://github.com/TypeStrong/atom-typescript/
- https://github.com/atom-haskell/ide-haskell

## Useful Links

- https://github.com/ensime/
- [Swank Protocol source](https://github.com/ensime/ensime-server/blob/master/swank/src/main/scala/org/ensime/server/protocol/swank/SwankFormats.scala)
- [Emacs command cheat sheet](ditors/emacs/cheat_sheet/)
- [Ensime Google Group](https://groups.google.com/forum/#!forum/ensime)
- [Startup of server from Emacs](https://github.com/ensime/ensime-emacs/blob/master/ensime-startup.el)
- [Space pen]( https://github.com/atom/space-pen/blob/master/src/space-pen.coffee)
- [Space pen views]( https://github.com/atom/atom-space-pen-views/blob/master/src/scroll-view.coffee)
- [Find and replace](https://github.com/atom/find-and-replace/blob/master/lib/project/results-pane.coffee)

