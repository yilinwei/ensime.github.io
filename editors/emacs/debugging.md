---
layout: subpage
section: /editors/emacs/
order: 6
title: Debugging
---

Debugging support in ENSIME is a work in progress. Feedback is welcome.

### Break Points
With your cursor on a line of Scala source, type `C-c C-d b` to set a breakpoint. Type `C-c C-d u` to remove the breakpoint. Note that breakpoints can be added and removed outside of any debug session. Breakpoints are not, however, persisted between runs of ENSIME.

### Launching the Debugger
Type `C-c C-d r` to launch the embedded Scala Debugger. ENSIME will prompt you for the class (with 'main' function) that you want to run (tab-completion works here), and then launch the debug VM. Alternatively, use `M-x ensime-db-attach` to attach to a remote VM that's already running. The first breakpoint your program hits will be highlighted and centered in Emacs.

### Run Control
Type `C-c C-d c` to continue after hitting a breakpoint, or `C-c C-d s` to step into the current line, or `C-c C-d n` to step to the next line, or `C-c C-d o` to step out of the current function.

### Value Inspection
When execution is paused, with your cursor over a local variable, type `C-c C-d i` to inspect the runtime value of a variable.

### Show Backtrace
When execution is paused, type `C-c C-d t` to display the current backtrace.
