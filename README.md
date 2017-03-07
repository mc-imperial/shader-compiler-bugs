A collection of shader compiler bugs in the Collective Knowledge Format
=======================================================================

[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-powered-by-ck.png)](http://cKnowledge.org)
[![logo](https://github.com/ctuning/ck-guide-images/blob/master/logo-validated-by-the-community-simple.png)](http://cTuning.org)
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

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
