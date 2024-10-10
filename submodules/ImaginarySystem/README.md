# ImaginarySystem

The ImaginarySystem and other tools contained in this repository provide a modular framework to ease creation of patches for installations in vvvv.

## Development Setup

### Setup Commit Message Git-Hook

Since this repository contains many different parts, we enforce a specific formatting for commit messages to always include a prefix stating the name of the module that has been worked on. This has been automated using a git-hook but, since git-hooks are not shared with the repository, needs to be activated running `hook-setup.bat` with admin rights. This script creates a symlink in your local `.git/hooks` folder to the hook files contained in `.hooks`.

Your next commit will then automatically include the name of the folder you worked in, like this:
```
[module-name] Your commit msg
```
