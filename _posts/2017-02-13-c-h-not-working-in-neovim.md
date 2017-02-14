---
layout: post
title: "Fix &lt;C-h&gt; Not Working in Neovim"
permalink: /posts/c-h-not-working-in-neovim
date: 2017-02-13
categories: posts
tags: [vim, neovim, iterm]
---

If you have `<C-h>` mapped in NeoVim to something such as `<C-w>h` to enable quick pane switching and it's not working, here's how you fix it.

Note that this fix is for neovim running in iTerm on macOS.

## The Issue

`<C-j>`, `<C-k>`, `<C-l>` mappings all work, except for `<C-h>`. It seems to be interpreted as `<BS>` (_backspace_, not _bu.*t_). By the way, if you do not know, `<C-h>` is historically selected because [`H` is the eighth character in the alphabet, and `<BS>` is ASCII code `08`][3].

![neovim-c-h-before](/assets/images/neovim-c-h-before.gif)

## The Fix

You'll need to configure iTerm to send the correct [CSI][2] code for `<C-h>`:
1. In iTerm go to __Edit__ > __Preferences__ (or `⌘,`) > __Keys__
2. Click `+` to add an entry
3. Press `Ctrl - h` in the __Keyboard Shortcut__ box
4. Choose __Send Escape Sequence__ as the __Action__
5. Type `[104;5u` as the __Esc+__ code

![neovim-c-h-iterm-settings](/assets/images/neovim-c-h-iterm-settings.png)

This key mapping will be applied to all your iTerm profiles.
For more details on the issue, see [neovim#2048][1]

![neovim-c-h-after](/assets/images/neovim-c-h-after.gif)

[1]: https://github.com/neovim/neovim/issues/2048
[2]: https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
[3]: https://en.wikipedia.org/wiki/Backspace#.5EH
