---
layout: section
order: 99
title: Contributing
---

## Setup

First, clone the git repo hosted at [github.com/ensime/ensime-emacs](https://github.com/ensime/ensime-emacs). If you pick up a ticket, please comment on it to let us know so that we can help (and also to avoid overlapping with somebody else).

The `.drone.yml` describes what our CI does and this can be followed for your local development.

You must install [Cask](http://cask.readthedocs.org/en/latest/guide/installation.html), the excellent build tool for Emacs Lisp projects and then initialise the repository and install the dependencies with:

```
cask pkg-file
cask install
```

## Testing

It all starts with a test.

The old tests are in `ensime-tests.el` but [we want to migrate](https://github.com/ensime/ensime-emacs/issues/389) to use [ert](http://www.gnu.org/software/emacs/manual/html_mono/ert.html) (see `test/ensime-emacs-test.el`) and [ecukes](https://github.com/ecukes/ecukes) (see the `features` directory).

To run the old tests, run the hacky `test/run_emacs_tests.sh` script.

To run the new, preferred style, tests, type `cask exec ert-runner` and `cask exec ecukes`.

## Running

If you want to run your branch to hack on Scala code, add your local explicitly into your `~/.emacs.d/init.el` and restart Emacs.

```elisp
;; assuming you put the repository in ~/.emacs.d/ensime-emacs
(add-to-list 'load-path (expand-file-name "ensime-emacs" user-emacs-directory))
```
