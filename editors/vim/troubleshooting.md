---
layout: section
order: 10
title: Troubleshooting
---

Thank you for using ENSIME on Vim!

~~Vimfidel, have you considered using Emacs?~~ (Sam, get out of here!)

Most tickets can be resolved easily by following a simple process.

0. Fully compile your project
1. Nuke old versions of the ENSIME server
   - `rm -rf ~/.ivy2/cache/org.ensime`
   - `rm -rf ~/.ivy2/local/org.ensime`
2. Use the latest release of `ensime` for Vim (i.e. update `ensime-vim` via your favorite package manager).
3. Sometimes we update the autocommands for the plugin. This can break NeoVim, so run `:UpdateRemotePlugins` and restart nvim
3. Check the [tickets flagged as FAQ for Vim](https://github.com/ensime/ensime-vim/issues?labels=FAQ).
4. Check the [tickets flagged as FAQ on the server](https://github.com/ensime/ensime-server/issues?labels=FAQ).
5. Search for duplicates, especially the [most recently updated tickets](http://github.com/ensime/ensime-vim/issues?direction=desc&sort=updated)

#### Common Issues

##### Screen Flickers When Printing Compile Errors/ Warnings
If you are using Syntastic, check the value of `syntastic_full_redraws`, as this determines Syntastic's redraw behavior on `SyntasticCheck`. If you are not using Syntastic and seeing flicker please open an issue.

##### Ensime Server Won't Start
The server will fail to start if any of these files still exist in the `.ensime_cache` directory: `http`, `port`, `server.pid`. If you don't see ensime running but those files are present, delete them and you should be all set.

##### My files don't typecheck on write anymore
We recently (Spring 2016) decided that typechecking on write wasn't a sane default. If you'd still like this behavior, just add the following line to your Scala autocommand group:
```
au BufWritePost *.scala :EnTypeCheck
```

##### The Plugin won't download Ensime
The bootstrapping process can be slow for Ensime, but only needs to be done once per scala-version. To ensure we don't repeat any uncessary work we check for the presence of a classpath-file in `~/.config/ensime/<ScalaVersion>`, where `<ScalaVersion>` is pulled from the `.ensime` config in question. If the classpath file already exist then the ensime jars will not be downloaded. Remove the version directory in question if you want to re-pull the jars (after cleaning your ivy cache of org.ensime of course).

If that solved your problem, great!

If not, please join the conversation on the `gitter.im` room [ensime-vim](https://gitter.im/ensime/ensime-vim). You will benefit by pre-emptively following the steps outlined in the [bug report template](https://github.com/ensime/ensime-vim/blob/master/.github/ISSUE_TEMPLATE.md)

If you think you've found a bug you can file it at [https://github.com/ensime/ensime-vim/issues/new](https://github.com/ensime/ensime-vim/issues/new) (you'd don't need to ask on the channel, just go right ahead and create a ticket).
