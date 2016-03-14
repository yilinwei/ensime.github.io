---
layout: section
order: 7
title: sbt-mode
---

The mode provides basic functionality required for successfully interacting with [sbt](http://www.scala-sbt.org/) inside emacs. The core functionality includes:

- interacting with sbt shell and scala console
- compiling code and navigating to errors

This mode can be used independently of ENSIME.

## Installation

This mode will be installed automatically if you use ENSIME.

However, if you want to install separately, the preferred mechanism is via MELPA and `use-package` as per our [Learning Emacs](/editors/emacs/learning) guide:

```elisp
(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/hvesalai/sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map))
```

Start an sbt session with `M-x sbt-start` or send a command to the current sbt process with `M-x sbt-command`.

You might also want to customize some `sbt-mode` variables (run `M-x customize-mode RET sbt-mode`).

## Related Customizations

To work efficiently with `sbt-mode`, you may wish to customise your workflow with the built-in Emacs compile support:

- customise `compilation-skip-threshold`
- locally bind a key to `comint-bol`
- locally bind a key to `comint-accumulate`
- locally bind a key to `next-error`

## Tasks

### Searching

Most users may prefer to use [projectile](https://github.com/bbatsov/projectile) for these features and [we may remove them](https://github.com/ensime/emacs-sbt-mode/issues/53).

A special version of the `rgrep` command is available with `sbt-mode`.

- `M-x sbt-grep` greps files in the sbt project
- `M-x sbt-find-definitions` will search for the definition of the thing at point from the project `.scala` and `.java` files.
- `M-x sbt-find-usages` will search for occurrences of the id at point from the project `.scala` and `.java` files.

### Scala console

ENSIME users have direct access to a scala REPL for the project, but it is also possible to drop into an sbt `console` session using `sbt-mode`.

It is advised when typing multi-line code snippets, use `comint-accumulate` instead of `RET` for newlines. This way, if you need to modify the code, you can use `M-p` to recall the whole snippet for reworking.

You can also send a region of code from an other buffer in the same project. First set the mark to the other end of the region to send and the point (cursor) the other. Then run the `M-x sbt-send-region` command. `sbt-paste-region` will enter `:paste` mode of Scala REPL, so that multiline statement/expression will work as expected.
