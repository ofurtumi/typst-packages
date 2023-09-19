# typst-packages

Collection of personal typst packages and templates

## location

to use these packages, this repo needs to be cloned into `{cache-dir}/typst/packages/` where `{cache-dir}` is

- `$XDG_DATA_HOME` or `~/.local/share` on Linux
- `~/Library/Application` Support on macOS
- `%APPDATA%` on Windows

## importing

to use a package or template import them using

`#import "@{namespace}/{package}:{version}": *`

for example `#import "@templates/ass:0.1.0": *`

## usage

```typst
#import "@templates/ass:0.1.0": *

#show: doc => template(
  author: "Your Name"
  project: "Project Name",
  class: "Class Name",
  doc
)
```
