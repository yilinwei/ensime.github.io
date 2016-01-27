---
layout: section
order: 2
title: Workflow
---

### TL;DR
- For best operation, you should ensure that your project has been compiled recently, and arrange to recompile as your source code changes.
- Alternatively, for small projects you can type `C-c C-c a` just after starting ENSIME.

### How the typechecker works
ENSIME uses the Scala presentation compiler, a light-weight version of the full compiler that only performs the first few stages of a compilation. It returns syntax/type errors, as well as the type of every expression, in fractions of a second rather than several seconds. This is how you receive instant feedback when you edit a .scala file.

In order to parse a source file correctly, the presentation compiler needs to know the type of every external class or object the source file uses. That information must be kept up-to-date whenever you make changes. There are two ways to accomplish this: load all source files, or depend on the project being compiled.

### Loading all source files
This is the simplest mode to understand but it has a few drawbacks. Type `C-c C-c a` to activate it. In this mode, every .scala file in you project is parsed. Editing a file causes everything to be reparsed again (starting with the file you just modified). The presentation compiler is always in sync with the state of your project.

The major disadvantage is that re-parsing everything takes too long for a large project (how large depends on your CPU).

### Counting on the project's .class files
This is ENSIME's default mode of operation. In this mode, the presentation compiler loads type information from .class files, and only load the source files that are being edited. This means that reparsing is always very fast. Obviously, this only works if your project has been compiled, otherwise ENSIME will show you lots of spurious errors.

This mode works well if you spend most of your time editing a small number of files. The compiler's state will be up to date regarding the file being edited. You should recompile whenever you want to see the effects of inter-file dependencies. When you recompile, ENSIME notices the change and reloads all open file.

You can revert from the "load all sources" mode to the default mode by typing `C-c C-c r`. Also try that key combination whenever the typechecker seems to produce wrong information.

### Practical workflows
Because compiling scala is time-consuming, the best workflow depends on the size of your project.
- For small projects, typing `C-c C-c a` at startup will give the best results.
- For small to medium projects, you can customize `ensime-sbt-perform-on-save` to `"compile"` then start sbt (`C-c C-b s`). This makes ENSIME send a "compile" command to sbt every time you save.
- For larger projects, compiling on every save may not be practical. You can type `C-c C-b c` every once in a while (this will start sbt if needed).
- If your workflow involves running tests often, this will keep your project compiled as a side effect.

### Remaining issues
We hope to fix them soon!

#### Some "refactor" features only work in "load all files" mode.
You must type `C-c C-c a` before using "Refactor/Rename" (`C-c C-r r`) and "Source/Find all references" (`C-c C-v r`). At the moment, these two commands will give incomplete results unless all source files are parsed.
