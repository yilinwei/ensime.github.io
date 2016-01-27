---
layout: section
order: 1
title: Emacs
---

ENSIME uses the Scala presentation compiler, a light-weight version of the full compiler that only performs the first few stages of a compilation. It returns syntax/type errors, as well as the type of every expression, in fractions of a second rather than several seconds. This is how you receive instant feedback when you edit a .scala file.

Ensime is available through Melpa. Install it alongside scala-mode2 and add `(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)` to your `.emacs` file. Next, install the [sbt plugin](http://ensime.github.io/build_tools/sbt/) or check [support](http://ensime.github.io/build_tools/) for your built tool of choice. Look [here](http://ensime.github.io/editors/emacs/install/) for more detailed instructions.

Once everything is installed, generate your `.ensime` (`gen-ensime` in sbt), then open emacs and run `M-x ensime`. Edit some code and play around with the commands in the [cheat sheet](http://ensime.github.io/editors/emacs/cheat_sheet/). Good luck!

Some useful resources to learn Emacs:

- [How to Learn Emacs: A Hand-drawn One-pager for Beginners / A visual tutorial][beginners-guide]
- [Mastering Emacs](https://www.masteringemacs.org/)
- [Sacha Chua's Emacs configuration](http://pages.sachachua.com/.emacs.d/Sacha.html)
- [GNU Emacs Reference Card (pdf)](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf)
- [GNU Emacs Lisp Reference Manual](https://www.gnu.org/software/emacs/manual/elisp.html)
- [MELPA](http://melpa.org/#/)

[Sam Halliday (@fommil)](https://github.com/fommil) is another great resource:

- [@fommil's .emacs.d](https://github.com/fommil/dotfiles/tree/master/.emacs.d)
- [@fommil's port of 99 problems to Emacs Lisp](https://github.com/fommil/e99)

The use of [EmacsWiki](http://www.emacswiki.org/) is discouraged.

[beginners-guide]: http://sachachua.com/blog/2013/05/how-to-learn-emacs-a-hand-drawn-one-pager-for-beginners/
