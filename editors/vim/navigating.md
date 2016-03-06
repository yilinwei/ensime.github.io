---
layout: section
order: 3
title: Navigating
---

### Jumping to definition

The default command is `:EnDeclaration`. Since you'll likely be using this pretty often it makes sense to remap it. Personally I use:
```
au FileType scala nnoremap <localleader>df :EnDeclaration<CR>
```

If you want to open the declaration in a new split instead of the current buffer use `:EnDeclrationSplit` instead

### Open Documetation For Browsing

`EnDocBrowse` evaluates the command at `$BROWSER` and passes in the value of `:EnDocUri`(which is the url to the documentation under the cursor)

For more information, use `:h ensime-vim`

