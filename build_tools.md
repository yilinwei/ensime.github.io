---
layout: section
order: 7
title: Supported Build Tools
site_nav_entry: true # this is an entry in the main site nav
---

TODO: a description of the role of the build tool in the workflow and large icon links to the supported tools. For now, choose from the sidebar to your left.

### Manual

Not recommended except in dire circumstances or if you're implementing support in a new build tool.

You can create an `.ensime` manually.

The schema of the `.ensime` file is defined in [`org.ensime.api.EnsimeConfig`](https://github.com/ensime/ensime-server/blob/master/api/src/main/scala/org/ensime/api/config.scala) and examples are available in [`EnsimeConfigSpec.scala`](https://github.com/ensime/ensime-server/blob/master/core/src/test/scala/org/ensime/config/EnsimeConfigSpec.scala) (you can also get substantial examples by running `sbt gen-ensime` against a supported project, such as `ensime-server` itself).
