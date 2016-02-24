---
layout: section
order: 2
title: Installation
---

- Auto-generated Table of Contents
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

### Build tool

If your project uses one of these supported build tools, visit the link, follow the instructions, and then come back here:

* [ensime-sbt](https://github.com/ensime/ensime-sbt)
* [ensime-gradle](https://github.com/ensime/ensime-gradle)
* [ensime-maven](https://github.com/ensime/ensime-maven)

### Manual

(Not recommended except in dire circumstances) You can create an `.ensime` manually: see an example [[here|Example-Configuration-File]].

## Starting

Simply compile your project with your build tool, navigate to a file or directory in your project and type:

```
M-x ensime
```

On first use (and following MELPA updates) this command will fetch the latest ENSIME server component for the project's version of scala. To force an update of the server to the latest snapshot release, type `M-x ensime-update`.

If the download fails, or you want to use a specific version of the server, install the developer version following the instructions [here](#installing-the-server-from-source).

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

# Manual installation

In case the recommended installation method doesn't work for you, or you want to hack on ensime, follow these steps:

## Installing ensime-mode manually

This is useful if you want to develop ENSIME.
Clone the github repo:

```
git clone https://github.com/ensime/ensime-emacs.git
```

into a directory of your choice and add it explicitly into your `~/.emacs`

```elisp
;; assuming you put the repository in ~/.emacs.d/ensime
(add-to-list 'load-path (concat user-emacs-directory "ensime"))
```

Note that you will need to install all the ENSIME dependencies as well. They are listed in the headers of the `ensime.el` file. You can also install ENSIME from source and use MELPA to install the dependencies.

## Installing the server from assembly builds or source

**Requires `ensime-sbt` 0.3.0 or later.**

If an `-assembly.jar` file exists in your `.emacs.d/ensime` directory (for the expected binary version of scala and ENSIME) then it will always be used in preference to the `sbt` auto-update procedure.

This is advantageous for developing on ENSIME and also to enable a simple install of the ENSIME server in restricted environments. SNAPSHOT assembly jars are provided at http://ensime.typelevel.org/ (with many thanks to typelevel for the use of their servers).

To build your own server jars, do this:

```
git clone https://github.com/ensime/ensime-server.git
sbt ++2.10.6 ensime/assembly # replace with your version of scala
cp target/scala-2.10/ensime_2.10-0.9.10-SNAPSHOT-assembly.jar ~/.emacs.d/ensime/
```

When you want to swap back to using official releases, delete your `-assembly.jar` files.

## Installing ensime-sbt from source

```
git clone https://github.com/ensime/ensime-sbt.git
sbt publishLocal
rm -rf ~/.ivy2/cache/scala_2.10/sbt_0.13/org.ensime # clears official snapshots
```

(changing as appropriate for backports to other versions of sbt)

When you want to swap back to using official snapshots, clear out your `~/.ivy2/local`.

# For more information

The ENSIME project is comprised of several github repositories. Follow these links for more information:

- [ensime-server](https://github.com/ensime/ensime-server/) -- server and main project - report issues there
- [ensime-emacs](https://github.com/ensime/ensime-emacs/)  -- emacs client
- [ensime-sbt](https://github.com/ensime/ensime-sbt/) -- `.ensime` generator for `sbt`
