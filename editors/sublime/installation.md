---
layout: section
order: 2
title: Installation
---

## Prerequisites

Before you start make sure you have:

- [installed SBT][sbt];
- [generated a `.ensime` file][gen-ensime] for your project;
- [installed Sublime Text][sublime].

## Installing via Package Control

The recommended way to install *ENSIME Sublime* is via [Package Control][package-control] (which is a must-have tool anyway):

1. [install Package Control][package-control-install];

2. open the Command Palette in Sublime Text (`Ctrl+Shift_P`);

3. type/select *"Package Control: Install Package"* and press *Enter*;

4. After a few seconds a second command palette will appear, asking you which package you'd like to install. Type/select *"Ensime"* and press *Enter*.

Sublime Text and ENSIME Sublime should now be correctly configured. The next step is to install ENSIME SBT.

## Launching ENSIME

Once you have [a `.ensime` file][gen-ensime] for your project, start an ENSIME session from within Sublime Text as follows:

1. Open the root folder of your project (the one containing the `.ensime` file) in Sublime Text.

2. Choose *"Ensime: Startup"* from the Sublime Text command palette (*Tools Menu / Command Palette...*).

   If this menu item doesn't appear, check *No Commands in the Command Palette?* in the [Troubleshooting](#troubleshooting) section below.

3. The first time you start ENSIME it will take a few minutes to download dependencies and get set up (it'll be much faster on subsequent runs).

   *TODO: How do you tell when it's initialised?*

   Open a Scala file and [verify that ENSIME is working][features].

## Trouble Getting It Working?

See the [troubleshooting page][troubleshooting] and [chat to us on Gitter][gitter]!



[features]: ../features
[gen-ensime]: /build_tools/sbt/
[gitter]: https://gitter.im/ensime/ensime-sublime
[sbt]: http://www.scala-sbt.org/download.html
[sublime]: http://sublimetext.com
[troubleshooting]: ../troubleshooting
[package-control]: https://packagecontrol.io/packages/Ensime
[package-control-install]: https://packagecontrol.io/installation
