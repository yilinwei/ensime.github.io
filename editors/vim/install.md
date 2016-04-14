---
layout: section
order: 2
title: Installation
---

1. Install Python's `websocket-client` so the plugin can communicate with ENSIME server.
    ```bash
    $ sudo pip install websocket-client sexpdata
    ```
1. Export `$BROWSER` if you want to launch documentation directly from Vim. Adding this line to your `.bashrc` for example:
    ```bash
    $ export BROWSER=firefox
    ```
1. Globally install the `ensime-sbt` plugin. This will automatically create the `.ensime` config file for a project.
   ```
    $ echo 'addSbtPlugin("org.ensime" % "ensime-sbt" % "0.3.3")' \
    >> ~/.sbt/0.13/plugins/plugins.sbt
   ```
1.  Add Ensime-Vim to your plugin manager of choice in your `.vimrc` or `init.vim`

    Plugins                                           |Your .{n}vimrc
    --------------------------------------------------|-------------------------------
    [Vim-Plug](https://github.com/junegunn/vim-plug)  | `Plug 'ensime/ensime-vim'`
    [Vundle](https://github.com/VundleVim/Vundle.vim) | `Plugin 'ensime/ensime-vim'`
    
    Under the hood this is just another vim plugin, so other plugin managers should work great as well.

1. If you use NeoVim, make sure you've installed the `neovim` python module
   ```
   $ pip install neovim
   ```
1. Install [Syntastic](https://github.com/scrooloose/syntastic) for highlighting & syntax checking, and [Scala Vim](https://github.com/derekwyatt/vim-scala) for filetype identification. 
    - Detailed instructions on both plugins can be found in their respective documentation.
1. After this, update your configuration and install them. With `vim-plug` this is done
by executing `:PlugInstall`. With `Vundle` run `:PluginInstall`. Once you have installed the plugin you must run `:UpdateRemotePlugins`

##### Post-Install Config

Depending on your workflow, you may want to add some of the following to your `.vimrc`

 - Typechecking after writing
    ```
    autocmd BufWritePost *.scala :EnTypeCheck
    ```

 - Easy Type Inspection
    ```
    nnoremap <localleader>t :EnTypeCheck<CR>
    ```
