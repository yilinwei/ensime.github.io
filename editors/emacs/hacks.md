---
layout: section
order: 90
title: Hacks
---

This is an area for Emacs Scala developers to contribute useful functions that they use as part of their custom workflow (they don't even have to be using ENSIME).

When adding a hack, please provide good lisp documentation along with some accompanying text explaining how you use the function as part of your workflow.

Some resources and examples:

- [Sam's .emacs.d](https://github.com/fommil/dotfiles/tree/master/.emacs.d)

- TOC
{:toc}

## Auto parentheses formatting

We recommend using [smartparens](https://github.com/Fuco1/smartparens) to automatically format parentheses on insertion, e.g. with

```elisp
  (sp-local-pair 'scala-mode "(" nil :post-handlers '(("||\n[i]" "RET")))
  (sp-local-pair 'scala-mode "{" nil :post-handlers '(("||\n[i]" "RET") ("| " "SPC")))
```

## Jump to code

Some people find it useful to add the following function to their `scala-mode-hook` as it will jump over the boilerplate at the beginning of most files:

```elisp
(scala-mode:goto-start-of-code)
```

## Expand region

If `expand-region` is installed, e.g.

```elisp
(use-package expand-region
  :commands 'er/expand-region
  :bind ("C-=" . er/expand-region))
```

then the ENSIME specific backend may be enabled by importing the functionality

```elisp
(require 'ensime-expand-region)
```
