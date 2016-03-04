---
layout: section
order: 4
title: Developing
---

Contributions to the code and documentation are welcome!

## Unsure How To Help?

[Gitter][gitter] is the place for you!

## Improving The Documentation

Fork the [ENSIME site][ensime-site] on Github.

## Hacking on the Code

The source code is [on Github][ensime-sublime]. If you are hacking on ENSIME Sublime, there are a few things you may want to do differently.

### Installing Directly from Source

Rather than installing ENSIME Sublime via Package Control, check out the [Git repo][ensime-sublime] directly into the directory you end up in when you choose *Preferences / Browse Packages*.

This will Sublime Text to pick up changes in the plugin codebase live as you edit it!

### Additional Configuration

By default, when you run the *Ensime: Startup* command, ENSIME Sublime starts a new instance of ENSIME Server. If you are hacking on ENSIME Server, you may find it useful to disable this behaviour.

To get ENSIME to connect to a pre-existing server instead, go to *Preferences / Package Settings / Ensime / Settings - User* and add the following config entry:

~~~ javascript
{
  // other config entries...
  "connect_to_external_server": false
}
~~~

To revert to the default behaviour, set the entry back to `true`.



[ensime-site]: https://github.com/ensime/ensime.github.io
[ensime-sublime]: https://github.com/ensime/ensime-sublime
[gitter]: https://gitter.im/ensime/ensime-sublime
