---
layout: section
order: 10
title: Troubleshooting
---

Have you read all the documentation at [ensime.org/editors/emacs](http://ensime.org/editors/emacs)? Please do, we put a lot of effort into it.

Most problems can be resolved easily by following a simple process. Please do not skip these steps:

0. fully compile your project
1. update `ensime` for Emacs.
2. update your [build tool plugin](/build_tools).
3. check the [tickets flagged as FAQ for Emacs](https://github.com/ensime/ensime-emacs/issues?labels=FAQ).
4. check the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
7. nuke old versions of the ENSIME server (and possibly SNAPSHOT deps)
   - `rm -rf ~/.ivy2/cache/org.ensime`
   - `rm -rf ~/.ivy2/local/`
   - `rm -rf ~/.emacs.d/ensime`
   and restart Emacs.

If that solved your problem, great!

If not, please join the conversation at [gitter.im/ensime/ensime-emacs](https://gitter.im/ensime/ensime-emacs). You'll be asked for a minimal reproduction of what you're seeing, but **for the love of Stallman, do not post stacktraces**. Instead, please follow the steps outlined in the [bug report template](https://github.com/ensime/ensime-emacs/blob/master/.github/ISSUE_TEMPLATE.md) which includes information to enable debugging.

If you think you've found a bug you can file it at [github.com/ensime/ensime-emacs](https://github.com/ensime/ensime-emacs/issues/new)
