---
layout: section
order: 10
title: Troubleshooting
---

Thank you for using ENSIME on Emacs!

Most tickets can be resolved easily by following a simple process.

0. fully compile your project
1. nuke old versions of the ENSIME server
   - `rm -rf ~/.ivy2/cache/org.ensime`
   - `rm -rf ~/.ivy2/local/org.ensime`
   - `rm -rf ~/.emacs.d/ensime`
2. use the latest release of `ensime` for Emacs (i.e. update `ensime` via MELPA).
3. check the [tickets flagged as FAQ for Emacs](https://github.com/ensime/ensime-emacs/issues?labels=FAQ).
4. check the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
5. search for duplicates, especially the [most recently updated tickets](http://github.com/ensime/ensime-emacs/issues?direction=desc&sort=updated)
6. check `M-x customize-group ensime` (or viewed `ensime-vars.el`) to see if this is already handled.
7. (if you are using spacemacs) ask on the spacemacs user list first.

If that solved your problem, great!

If not, please join the conversation on the `gitter.im` room [ensime-emacs](https://gitter.im/ensime/ensime-emacs) (you can access gitter from Emacs via the [irc bridge](https://irc.gitter.im/), e.g. [Sam's config](https://github.com/fommil/dotfiles/blob/4fde3ee31074052fa98d9dbd6ca1c1625cdb1015/.emacs.d/init-gnu.el#L46-L54)). You'll be asked for a minimal reproduction of what you're seeing (*please*, for the love of Stallman, do not post stacktraces). You will benefit by pre-emptively following the steps outlined in the [bug report template](https://github.com/ensime/ensime-emacs/blob/master/.github/ISSUE_TEMPLATE.md)

If you think you've found a bug you can file it at [https://github.com/ensime/ensime-emacs/issues/new](https://github.com/ensime/ensime-emacs/issues/new) (you'd don't need to ask on the channel, just go right ahead and create a ticket).
