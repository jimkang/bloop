bloop
==================

A JavaScript project bootstrapper. The successor to [this gist](https://gist.github.com/jimkang/9e8d90f084745e57e391).

When I start a new project, I:

1. Find a project that the new project is most similiar to.
2. `cp -r` that project.
3. Delete `.git` and `node_modules`.
4. Run sed to find and replace instances of the old project name with the new project name.
5. `git init` in the new project.

This is an automated version of that. I find copying old projects much more practical than trying to anticipate what I'll need in the future with [templates](https://github.com/jimkang/node-module-boilerplate/).

## Assumptions

It works on several assumptions:

- It's running in a directory that contains the base project, and that the new project should be under that same directory. e.g. It's in `~/code/` and `~/code/oldproject` exists, and you want `~/code/newproject` to be created.
- The name of the base project is the same as that of the directory. e.g. `oldproject` is in the directory `oldproject`, there are `oldproject` strings within the code.
- It's a JS project, or at least one with a `node_modules` directory and a `package-lock.json`.
- You don't want the source history from the base project.

Usage
----

Copy [bloop.sh](bloop.sh) to the directory that houses your projects and make it executable. If you're on OS X, look for the line in the script that says it should be uncommented (and comment out the line it says should be commented out). If you're on Linux, it should just work. I have not tried this on Cygwin.

Then, just run `./bloop.sh` and answer the prompts.

License
-------

The MIT License (MIT)

Copyright (c) 2019 Jim Kang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
