# one-session.nvim
A single session manager that has only one session.
Useful if you keep buffers from multiple projects open and don't want to have a session per project because you keep going back and forth between projects.

## Installation

### Packer
```lua
use { "yyk/one-session.nvim" }
```

## Usage
When starting vim with no arguments, the one single session will be loaded.
When existing vim with no arguments, the one single session will be saved.

## TODO
* allow user to specify where the session is saved
