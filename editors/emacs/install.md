---
layout: section
order: 2
title: Installation
---

- TOC
{:toc}


## System requirements

- JDK 1.6+
- Emacs 24.3+
- Scala 2.10.4+ or 2.11.5+


## Installing

We assume that you already have [MELPA](http://melpa.org) set up as per our [Learning Emacs](/editors/emacs/learning) guide.

The recommended way to install ENSIME is via MELPA and registering a `scala-mode-hook`:

```elisp
(use-package ensime
  :commands ensime ensime-mode)

(add-hook 'scala-mode-hook
    (lambda ()
        (ensime-mode)))
```

If necessary, make sure `sbt` is in your `PATH` environment. On OSX, set `exec-path` within Emacs, e.g.:

```elisp
(setq exec-path (append exec-path '("/usr/local/bin")))
```

Basic Scala support is provided by the excellent [`scala-mode2`](/editors/emacs/scala-mode) which provides many features specific to Scala major mode editing.


## Updating

ENSIME is under active development and there will be from time to time backward-incompatible changes, so it's important to stay up to date.

The server will be automatically upgraded when you upgrade the client, which will result in a short `*ensime-update*` session. You can manually force a server update by typing:

```
M-x ensime-server-update
```


## Starting

Compile your project with your [build tool](/build_tools) and generate a `.ensime` file. Then navigate to a file or directory in your project and type:

```
M-x ensime
```

**Check that again**. It is very important that you compile your project and have generated a `.ensime` file from one of the supported build tools.

The first time you use ENSIME, you can expect to wait several minutes for the server and all of its dependencies to be downloaded.

On first use for a project, you will need to wait a few moments for indexing to complete.

Once the server is available, enjoy editing with the ENSIME commands that are conveniently summarised in our [Cheat Sheet](/editors/emacs/cheat_sheet).

Customisations are defined in [ensime-vars.el](http://github.com/ensime/ensime-emacs/blob/master/ensime-vars.el) and will appear in `M-x customize`.


## Spacemacs

We do not officially support Spacemacs, so you may find the quality of ENSIME is not as high as it is for stock GNU Emacs. This is because:

1. the core ENSIME contributors don't use Spacemacs
2. nobody has stepped forward to write integration tests
3. [they do not have a Code of Conduct](https://github.com/syl20bnr/spacemacs/pull/3484) that is compatible with [Typelevel](http://typelevel.org/conduct.html)

If you're a Spacemacs / ENSIME contributor, you may wish to discuss features with us on [gitter.im/ensime/ensime-emacs](http://gitter.im/ensime/ensime-emacs) as they could have general applicability to all Emacs ENSIME users.

Many people believe Spacemacs is to Emacs as stabilisers are to bicycles. If you're a Vim user wanting to try out Emacs, we have a [Learning Emacs](/editors/emacs/learning) page to help you get started and you may feel at home in [Evil Mode](https://bitbucket.org/lyro/evil/wiki/Home) with Vim-like key bindings.
