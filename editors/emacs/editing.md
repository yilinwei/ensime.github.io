---
layout: subpage
section: /editors/emacs/
order: 3
title: Editing
---

### Startup
To start ENSIME type `M-x ensime`. You only need to do this once per project session. Follow the minibuffer instructions to specify the location of your .ensime project file. Bear in mind that the server may take several seconds to finish loading and analyzing your project's sources. To watch the progress of the ENSIME startup, switch to the `*inferior-ensime-server*` buffer.

Unless your project was compiled recently, ENSIME is likely to indicate spurious type errors. You have two choices:

1. compile your project, for instance by typing `sbt compile test:compile` in a separate shell. ENSIME will notice the change and the errors should disappear.
1. type `C-c C-c a` _if your project isn't too large_

See [[Edit Compile Workflow]] for more details.

### Error Highlighting
ENSIME will highlight errors and warnings in source files through the use of the Scala presentation compiler, a lightweight version of the Scala compiler. This is triggered in several ways:
- when you save a file
- when you type `C-c C-v a`
- after a short pause in typing. The frequency of these checks is controlled through the variables `ensime-typecheck-idle-interval` and `ensime-typecheck-interval`. This feature can be disabled by setting `ensime-typecheck-when-idle` to `nil`.

Typing `C-c C-c e` lists all errors and warnings in a separate window. Hovering the mouse over a highlighted error or typing `C-c C-v e` displays the error details in the echo area.

### Semantic Highlighting

Normally syntax highlighting is based on the syntactic aspects of the source code. Semantic Highlighting adds color-coding based on semantic properties of the source. For example: a syntax highlighter can't tell whether a given identifier is a var or a val or a method call. Semantic Highlighting on the other hand can color vars differently to warn of their mutability.

Semantic Highlighting is enabled by default. To disable it, set the customization variable `ensime-sem-high-enabled-p` to `nil`. When Semantic Highlighting is enabled, colors are refreshed every time you save the file.
To customize Semantic Highlighting, change the value of the variable `ensime-sem-high-faces`, which stores a list of `(symbolType . face)` associations. A "face" can be a reference to an existing Emacs face, such as `font-lock-keyword-face`, or a list of the form `(:foreground `color')`, where `color` is either a standard Emacs color (such as "slate gray") or a hex value like "#ff0000". For example, you might add the following to your .emacs file:
```elisp
 (setq ensime-sem-high-faces
  '((var . (:foreground "#ff2222"))
    (val . (:foreground "#dddddd"))
    (varField . (:foreground "#ff3333"))
    (valField . (:foreground "#dddddd"))
    (functionCall . (:foreground "#84BEE3"))
    (param . (:foreground "#ffffff"))
    (class . font-lock-type-face)
    (trait . (:foreground "#084EA8"))
    (object . (:foreground "#026DF7"))
    (package . font-lock-preprocessor-face)
    (implicitConversion . (:underline (:style wave :color "blue")))
    (implicitParams . (:underline (:style wave :color "blue")))
    (deprecated . (:strike-through "dark gray"))))
```
or edit it using `M-x customize-variable RET ensime-sem-high-faces`. By the way, the symbol types in the example above are all that are currently supported.

### Implicit conversion highlighting

ENSIME highlights implicit conversions during semantic highlighting. Hover over a highlighted area or type `C-c C-v e` to see the details of the implicit conversion.

### Symbol and Member Completion
ENSIME completion is initiated by pressing the `TAB` key. To complete a symbol, type the first couple characters, then press `TAB`. Currently this works for local variables, method parameters, unqualified method names, and type names. To complete a type member, type `.` or `SPACE` followed by `TAB`.

#### Completion menu key commands
Candidates can be scrolled with `M-n` and `M-p` or `UP` and `DOWN`. Candidates can be searched by typing `C-s`. Press `TAB` again to complete a common prefix. To cancel completion, type `C-g`. Finally, if you've selected the completion you want, press `ENTER`. If the selected completion was a method name, the minibuffer will display help for the method parameters.

### Source Formatting
ENSIME uses the Scalariform library to format Scala sources. Type `C-c C-v f` to format the current buffer. See [[here|Scalariform Preferences]] for instructions on how to customize the formatting preferences.

### Refactoring

#### Rename
Place your cursor over the symbol you'd like to rename. Type `C-c C-r r` and follow the minibuffer instructions.

#### Organize Imports
Type `C-c C-r o` in a Scala source buffer. Follow the minibuffer instructions.

#### Extract Method
Select a region by setting the mark using `C-SPACE` and then placing the point at the end of the region. All selected code will be extracted into a helper method. Type `C-c C-r m` and follow the minibuffer instructions.

#### Inline Local
Place your cursor over the local val whose value you'd like to inline. Type `C-c C-r i` and follow the minibuffer instructions.
