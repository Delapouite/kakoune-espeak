# kakoune-espeak

[kakoune](http://kakoune.org) plugin to pronounce text with [espeak](https://github.com/espeak-ng/espeak-ng/).

## Install

Add `espeak.kak` to your autoload dir: `~/.config/kak/autoload/`.

## Usage

Run the `espeak` command. It will pronounce the content of the selections.
You can pass an argument like `espeak x`: it will pronounce the current line without selecting it.

It offers a `espeak` user mode with several default bindings:

```
 b: buffer name
 c: coordinates
 e: selections
 p: paragraph
 s: sentence
 w: word
 x: line
```

You can therefore add your own mappings with `map global espeak <your expression>`.
Then to enter this user mode, add a normal mapping:

```
map global normal <a-,> ':enter-user-mode global espeak<ret>'
```

## Licence

MIT
