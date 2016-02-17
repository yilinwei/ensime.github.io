---
layout: section
order: 10
title: Troubleshooting
---

Thank you for using ENSIME on Vim!

~~Vimfidel, have you considered using Emacs?~~ (Sam, get out of here!)

Most tickets can be resolved easily by following a simple process.

1. nuke old versions of the ENSIME server
   - `rm -rf ~/.ivy2/cache/org.ensime`
   - `rm -rf ~/.ivy2/local/org.ensime`
2. use the latest release of `ensime` for Vim (i.e. update `ensime` via MELPA).
3. check the [tickets flagged as FAQ for Vim](https://github.com/ensime/ensime-vim/issues?labels=FAQ).
4. check the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
5. search for duplicates, especially the [most recently updated tickets](http://github.com/ensime/ensime-vim/issues?direction=desc&sort=updated)

If that solved your problem, great!

If not, please join the conversation on the `gitter.im` room [ensime-vim](https://gitter.im/ensime/ensime-vim). You will benefit by pre-emptively following the steps outlined in the [bug report template](https://github.com/ensime/ensime-vim/blob/master/ISSUE_TEMPLATE.md)

If you think you've found a bug you can file it at [https://github.com/ensime/ensime-vim/issues/new](https://github.com/ensime/ensime-vim/issues/new) (you'd don't need to ask on the channel, just go right ahead and create a ticket).
