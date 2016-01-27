---
layout: section
order: 10
title: Troubleshooting
---

Thank you for using ENSIME!

Most tickets can be resolved easily by following a simple process.

Before one of the core devs can respond to this ticket, please confirm the following:

1. you nuked ENSIME from your ivy cache (i.e. `rm -rf ~/.ivy2/cache/org.ensime`).
2. you are using the latest release of `ensime-emacs` (i.e. update `ensime` via MELPA).
3. you are using the latest release of `ensime-server` (i.e. type `M-x ensime-update`).
4. you checked the [tickets flagged as FAQ for Emacs](https://github.com/ensime/ensime-emacs/issues?labels=FAQ).
5. you checked the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
6. you checked the [most recently updated tickets](http://github.com/ensime/ensime-emacs/issues?direction=desc&sort=updated)
7. you checked `M-x customize-group ensime` (or viewed `ensime-vars.el`) to see if this is already handled.
8. (if you are using spacemacs) you asked on the spacemacs user list first.

If that solved your problem, great! Please close this ticket. If not, please read on...

There is very little we can do unless you provide us with a **minimal reproduction of the problem**. Please provide:

1. a standalone project on github (or use `ensime-server`)
2. step by step instructions to trigger the bug (videos are useful)
3. attach your `.ensime` to the repository (or in a gist)
4. also attach the output from the ENSIME server buffer
5. also attach an emacs stacktrace (if relevant), e.g. via `(setq debug-on-error t)`

**The next step is for us to help you create a unit test that fails.** We'll give as much help as we can, our goal is to grow this community. You have all the skills you'll need to make ENSIME even better.

This message has been brought to you by [consierge](https://github.com/Astrac/github-autoresponder).
