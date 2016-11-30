# shader-compiler-bugs
A collection of shader compiler bugs.

Software pre-requisites
=======================

* Python 2.7 or 3.3+
* git client
* Collective Knowledge Framework (CK) - http://github.com/ctuning/ck

You can install above dependencies on Ubuntu via:
```
$ sudo apt-get install python python-pip git
$ sudo pip install ck
```

Installation
============

You can install this repository via CK as follows:

```
$ ck pull repo --url=https://github.com/mc-imperial/shader-compiler-bugs
```

You can list all issues via
```
$ ck list ogl-bug
```

You can view meta of a shared bug via
```
$ ck load ogl-bug:{bug alias or UID}AMD-R7-Ubuntu-16.04 --min
 for example:
$ ck load ogl-bug:AMD-R7-Ubuntu-16.04 --min
```

You can add a new entry for a bug via
```
$ ck add ogl-bug:MY-BUG-ALIAS
```
you can then edit meta via
```
$ vim `ck find ogl-bug:MY-BUG-ALIAS`
```

You can visualize issues via CK web dashboard
```
$ ck dashboard ogl-bug
```

CK-based workflow to detect and replay bugs is coming soon ...
