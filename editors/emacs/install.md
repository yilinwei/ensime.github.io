---
layout: section
order: 2
title: Installation
---

- TOC
{:toc}

**THIS CONTENT IS OUT OF DATE**

Please help by updating it, moving the non-emacs parts into the their correct home on this webpage, and fixing the broken links (which are a left-over from the migration from the old wiki).

## System requirements
- Linux, Mac OS X or Windows
- JDK 1.6+
- Emacs 24 (24.4 is regularly tested)
- Scala 2.10 or 2.11.5 or higher

## Installing ensime-mode for emacs

The recommended way is to use MELPA and to set up a `scala-mode-hook`:

```elisp
;; if you're new to the MELPA package manager, just include
;; this entire snippet in your `~/.emacs` file and follow
;; the instructions in the comments.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Restart emacs and do `M-x package-install [RETURN] ensime [RETURN]`
;; To keep up-to-date, do `M-x list-packages [RETURN] U x [RETURN]`

;; If necessary, make sure "sbt" and "scala" are in the PATH environment
;; (setenv "PATH" (concat "/path/to/sbt/bin:" (getenv "PATH")))
;; (setenv "PATH" (concat "/path/to/scala/bin:" (getenv "PATH")))
;;
;; On Macs, it might be a safer bet to use exec-path instead of PATH, for instance:
;; (setq exec-path (append exec-path '("/usr/local/bin")))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


;; OPTIONAL
;; there are some great Scala yasnippets, browse through:
;; https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
(add-hook 'scala-mode-hook #'yas-minor-mode)
;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)
```

Much of the actual text editing is provided by the excellent
[scala-mode2](https://github.com/hvesalai/scala-mode2), which can
be customised.

### Keeping ensime-mode up-to-date

ENSIME is under active development and there will be from time to time backward-incompatible changes, so it's important to stay up to date. To upgrade all MELPA packages, type:

```
M-x list-packages [RETURN] U [RETURN] x [RETURN]
```

## Creating a `.ensime` file

You'll need to install support for one of the [build tools](http://ensime.github.io/build_tools/) that supports ENSIME in order to generate a `.ensime` file for your project.

## Starting

Simply compile your project with your build tool, navigate to a file or directory in your project and type:

```
M-x ensime
```

On first use (and following MELPA updates) this command will fetch the latest ENSIME server component for the project's version of scala. To force an update of the server to the latest snapshot release, type `M-x ensime-update`.

If the download fails, or you want to use a specific version of the server, install the developer version following manual server installation as per the [Contributing Guide](/contributing).

On first startup for a project, you will need to wait several minutes

Once the server is available, enjoy editing with the ENSIME commands that are conveniently
summarised in our
[ENSIME command reference](https://github.com/ensime/ensime-emacs/wiki/Emacs-Command-Reference)
(or [read it straight from the source](http://github.com/ensime/ensime-emacs/blob/master/ensime-mode.el#L49)).

Unless your project was compiled recently, ENSIME is likely to indicate spurious type errors. You have two choices:

1. compile your project, for instance by typing `sbt compile test:compile` in a separate shell. ENSIME will notice the change and the errors should disappear.
1. type `C-c C-c a` _if your project isn't too large_

The [[Edit Compile Workflow]] is very important to help you to understand why functionality may be limited at certain times in your development cycle (e.g. when your source code is completely uncompilable).

Emacs-wide customisations are defined in [ensime-vars.el](http://github.com/ensime/ensime-emacs/blob/master/ensime-vars.el) and will appear in `M-x customize`.
