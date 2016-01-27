---
layout: section
order: 5
title: Navigating
---

### Jumping to definitions
Press `M-.` with the cursor on a variable, method, type, or package to visit that object's definition. This feature works for types/methods defined in a library, as long as ENSIME knows where to find the library's source code. For this, make sure that your `.ensime` has its `:reference-source-root` property populated with the appropriate list of source .jar files. For sbt projects, the `sbt gen-ensime` command populates `:reference-source-roots` as long as the library sources have been published.

### Type/Package Inspector

#### Invocation
Control+Right-Clicking on a symbol in a Scala buffer, or typing `C-c C-v i` while the point is over a symbol will launch the type inspector. Typing `C-c C-v o` will open the inspector on the current project's main package. `C-c C-v p` will inspect the package of the current source file. Use the command `M-x ensime-inspect-by-path` to inspect an arbitrary type or package.

#### Package Inspector
Displays a hierarchical view of a package, including all top-level types. Select a type to open the Type Inspector.

#### Type Inspector
Lists the interfaces that contribute members to the inspected type. List each interface's methods, with full type signatures. If the type has a companion object/class, a link to the companion will appear under the heading.

#### Navigation
Most things in the inspector are hyper-linked. You can click these links with the mouse or position your cursor over them and press ENTER. A history is kept of all the pages you view in the inspector. Go back in this history by typing `,` and forward by typing `.`.

### Scaladoc and Javadoc Browsing

Type `C-c C-v d` to browse a symbol's www documentation. Support is included for the java and scala standard libraries, as well as the android class library. To add your own doc library, you need to add a handler to the `ensime-doc-lookup-map`. This handler list is made up of `(regex . handler)` pairs, where `regex` is a regular expression string that will be matched against the fully qualified type name, and `handler` is a function that will be applied to the requested type and member and should return a url. Here's an example of how you might add new java docs for classes in com.example:

```elisp
(defun make-example-doc-url (type &optional member)
  (ensime-make-java-doc-url-helper 
    "http://developer.example.com/apidocs/" type member))

(add-to-list 'ensime-doc-lookup-map '("^com\\.example\\." . make-example-doc-url))
```

Note that `ensime-make-java-doc-url-helper`, and its Scala equivalent `ensime-make-scala-doc-url-helper`, are provided for doing the harder work of building the url paths.

### Global Type and Method Search
Type `C-c C-v v` to start a global search. Type space separated keywords to filter the results of the search. For example, if I wanted to find `java.util.Vector`, I might start by typing `vector`, which would list all symbols containing the word `vector` (case-insensitive), and then I would type `java` to further refine the search. `C-p` and `C-n` move the selection up and down, respectively, and `ENTER` will jump to the source or definition of the selected symbol.

### Jump to Test
ENSIME allows you to quickly jump to a class' unit test. With the cursor inside a class definition, type `C-c C-t t` to go to the corresponding test class. If the class doesn't exist, a new file will be created. With the cursor inside a test class, type `C-c C-t i` to go to the corresponding implementation class.

This only works if test classes use the customary naming convention, specifically:
- a test class is derived from the implementation class by appending "Test", "Spec", "Specification", or "Check" to the classname (and using the same package).
- directories that contain test classes end with "src/test/scala" or "/tests".

If your project uses a different convention, you must customize `ensime-goto-test-configs` or `ensime-goto-test-config-defaults`. These variables also specify the template to use when creating new test classes. Type `C-h v ensime-goto-test-config-defaults` and `C-h v ensime-goto-test-configs` to learn how to customize them.
