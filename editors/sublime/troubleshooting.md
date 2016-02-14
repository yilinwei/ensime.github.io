---
layout: section
order: 5
title: Troubleshooting
---

## Troubleshooting

Things go wrong -- we know! Here are some of the main gotchas. If these tips don't solve your problem, [ask on Gitter][gitter] and check the [issue tracker][issues] to see if others have had the same problem.

## Manually Specifying the Location of SBT

If Ensime can't find SBT on your PATH, you can hard-code the location in the preferences for the Sublime Text Ensime package:

- On OS X, choose *Sublime Text Menu / Preferences / Package Settings / Ensime / Settings - User*
- On Windows and Linux, choose *Preferences Menu / Package Settings / Ensime / Settings - User*

The configuration file will be empty when you open it. Add the path to your SBT executable as follows:

~~~json
{
  "sbt_binary": "/path/to/sbt"
}
~~~

After that you should be able to run the *Ensime: Startup* command from the Command Palette. If it doesn't work immediately, try restarting Sublime Text.

## Checking Java and SBT Visiblity

Unsure whether Sublime Text can see Java and SBT on your system application path? Try pasting the following commands one at a time into the Sublime Text console (*View menu / Show Console*).

On Linux or OS X:

~~~ python
# Check the visibility of Java:
import subprocess; print(subprocess.check_output(['which', 'java'], stderr=subprocess.STDOUT).decode("utf-8"))

# Check the visibility of SBT:
import subprocess; print(subprocess.check_output(['which', 'sbt'], stderr=subprocess.STDOUT).decode("utf-8"))
~~~

On Windows:

~~~ python
# Check the visibility of Java:
import subprocess; print(subprocess.check_output(['where', 'java'], stderr=subprocess.STDOUT).decode("utf-8"))

# Check the visibility of SBT:
import subprocess; print(subprocess.check_output(['where', 'sbt'], stderr=subprocess.STDOUT).decode("utf-8"))
~~~

In each case you should see a path string, something like this:

~~~
b'/usr/bin/java\n'
~~~

If you see and error message like this, Sublime Text can't see the relevant executable:

~~~
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "./subprocess.py", line 589, in check_output
subprocess.CalledProcessError: Command '['which', 'java']' returned non-zero exit status 1
~~~

## Checking Java and SBT Versions

Ideally you should be using Java 8 and SBT 0.13.x. To check this, paste the following commands one at a time into the console (*View Menu / Show Console*):

~~~ python
# Check the Java version:
import subprocess; print(subprocess.check_output(['java', '-version'], stderr=subprocess.STDOUT).decode("utf-8"))

# Check the SBT version:
import subprocess; print(subprocess.check_output(['sbt', 'sbtVersion'], stderr=subprocess.STDOUT).decode("utf-8"))
~~~

## No Commands in the Command Palette?

If your command palette doesn't contain the *Ensime: Startup* menu item, it is most likely because ENSIME Sublime can't find your `.ensime` file:

- Ensure you have created a `.ensime` file using the `gen-ensime` command.

  If you have recently (re)generated your `.ensime` file, you may have to quit and restart Sublime Text to pick up the changes.

- Ensure the top-most item in the Side Bar (*View Menu / Side Bar / Show Side Bar*) is your project directory (the one containing the `.ensime` file).

  If not, choose *File Menu / Open...* and open the project directory directly.

## Line Endings

If you find that some features of Ensime are not working properly (e.g. *Go To Definition* or *Error Highlighting*), check the *Line Endings* setting in Sublime Text.

On Windows, the line endings is set to *Windows* by default. ENSIME Sublime requires it to be *Unix*. Change the setting by going to *View menu / Line Endings* and selecting *Unix*.

Also check *View menu / Console* for log information.



[gitter]: https://gitter.im/ensime/ensime-sublime
[issues]: https://github.com/ensime/ensime-sublime/issues
