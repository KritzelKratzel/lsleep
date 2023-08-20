# lsleep: Lua Sleep with CMake Support
Because sometimes, you just want sleep.


## Introduction

**lsleep** is an uber-simple library that just adds `sleep` and `usleep` to Lua. There is no need anymore to require `luasocket` for this missing feature in Lua.

## Usage

```lua
local lsleep = require 'lsleep'
lsleep(3) -- wait three seconds. Argument must be integer.

local sleep  = lsleep.sleep
local usleep = lsleep.usleep

sleep(1) -- wait one second.
usleep(2.5 * 1000000) -- wait 25_000_000 µs (2.5 seconds)
```

**Note:** Original documentation for `lsleep:usleep (wait)` is somewhat erroneous. Argument `wait` counts in microseconds and not in units of 100 nanoseconds.

## Building and Installing lsleep

### Prerequisites

lsleep with CMake Support relies on an installation of [Lua with CMake Support](https://github.com/KritzelKratzel/lua#readme). The same toolchain which has been used with *Lua with CMake Support* is required. lsleep gets all necessary path, header and library information from CMake `liblua` package data and will be installed automatically into the right directory locations - no hassle with `package.path` settings anymore.

### Build and Install

Open `Developer Command Prompt for VS 2022` and change drive and directory. Download and unpack sources or simply clone this repository:

```cmd
c:
cd c:\Temp
git clone https://github.com/KritzelKratzel/lsleep
cd lsleep
```

CMake strongly encourages out-of-source builds.

```cmd
mkdir build
cd build
cmake .. -G "Visual Studio 17 2022" -A <arch>
cmake --build . --config Release
cmake --install . --config Release
```

Replace `<arch>` with your desired architecture. Available architectures with selected `Visual Studio 17 2022` generator are `Win32`, `x64`, `ARM` and `ARM64`. lsleep documentation is available in `<lua_install_dir>/share/doc/lsleep` after install.

## License

```txt
MIT License 

Copyright (c) 2013 Andrew Starks

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

