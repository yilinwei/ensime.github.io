---
layout: section
order: 1
title: Learning Emacs
---

If you are new to Emacs, be prepared for a very rewarding learning curve!

Some useful resources to learn Emacs:

- [How to Learn Emacs: A Hand-drawn One-pager for Beginners / A visual tutorial](http://sachachua.com/blog/2013/05/how-to-learn-emacs-a-hand-drawn-one-pager-for-beginners/)
- [Mastering Emacs](https://www.masteringemacs.org/)
- [Sacha Chua's Emacs configuration](http://pages.sachachua.com/.emacs.d/Sacha.html)
- [GNU Emacs Reference Card (pdf)](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf)
- [GNU Emacs Lisp Reference Manual](https://www.gnu.org/software/emacs/manual/elisp.html)
- [MELPA](http://melpa.org/#/)
- [Emacs on Stack Exchange](https://emacs.stackexchange.com/)
- [@fommil's .emacs.d](https://github.com/fommil/dotfiles/tree/master/.emacs.d)
- [@fommil's port of 99 problems to Emacs Lisp](https://github.com/fommil/e99)

The use of [EmacsWiki](http://www.emacswiki.org/) is discouraged as much of the content is out of date.

We do not advise using Spacemacs as [they do not have a Code of Conduct](https://github.com/syl20bnr/spacemacs/pull/3484) in place. Be warned that although [Stack Exchange](http://meta.stackexchange.com/help/be-nice) / [Emacs mailing list](http://www.emacswiki.org/emacs/EmacsMailingLists) / [IRC channels](https://www.emacswiki.org/emacs/EmacsChannel#toc3) have escalation procedures for violation of their various "be nice" rules, they are not subject to the Typelevel Code of Conduct. If you are uncomfortable engaging with any of these communities, please feel free to talk about general Emacs issues on the [ENSIME Emacs gitter room](http://gitter.im/ensime/ensime-emacs).

Inside your `~/.emacs.d/init.el` file, you can type `C-h v` over any variable (in the `setq` and `setq-default` lists) to see its help page, and `C-h f` over any function to see its help page. TODO: make the suggested file self-documenting for beginners.

The following is intended to set some built-in Emacs variables that often confuse / annoy new users and is by no means a fully functional development environment.

```elisp
;; global variables
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 source-directory (getenv "EMACS_SOURCE")
 sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4)

;; modes
(electric-indent-mode 0)

;; global keybindings
(global-unset-key (kbd "C-z"))

;; this sets you up with the package manager
(require 'package)
(setq
 use-package-always-ensure t
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
```

Consider using [use-package](https://github.com/jwiegley/use-package) to manage your configuration, e.g.

```elisp
(use-package projectile
  :demand
  :init   (setq projectile-use-git-grep t)
  :config (projectile-global-mode t)
  :bind   (("s-f" . projectile-find-file)
           ("s-F" . projectile-grep)))
```
