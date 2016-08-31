---
layout: post
title: Tap CapsLock for Esc, Hold for Ctrl
date: 2016-08-31
categories: posts
tags: [productivity, keyboard, karabiner, seil, capslock]
---

Today I stumbled upon a post by Brendon Rapp on economyofeffort.com titled "_Beyond Ctrl: Make That Caps Lock Key Useful_".

> tl;dr: Supercharge your Caps Lock key by making it Esc when tapped, and Ctrl when held.

Read that again. __CapsLock key acts as Esc when tapped, Ctrl when held down__?

_Mind = blown_ 😱💥😵 _, amirite?_

I have never used the CapsLock key as I've always held the Shift key to type in UPPERCASE, and as a Vim user most of the time I have CapsLock mapped to Ctrl via macOS' System Preferences. This way my pinky doesn't have to awkwardly reach for the Ctrl key at the corner of the keyboard, which I do hundreds of times a day.

Yes yes, I know you can alternatively press `Ctrl-C` instead of Esc, but having Esc right under your pinky, system wide? Totally cool stuffs👌!

Another reason for my excitement is that I'm using the Pok3r RGB keyboard, which combines the grave (<code>`</code>) key with the Esc key under one keycap. This means that I can't have the keyboard configured in anyway that makes pressing both of them in one keystroke each.

Anyway, the [post][1] has instructions for setting this up under both macOS and Linux. Go and check it out!

In case the post ever goes away, here's how you do it on macOS:

1. Install [Karabiner][2] and [Seil][3]:

    ```
    brew tap caskroom/cask && brew cask install karabiner seil
    ```

2. Go to _System Preferences > Keyboard > Modifier Keys_ and set _CapsLock_ as _No Action_.
3. Open the _Seil_ app and under _Change the caps lock key_, set the keycode to _80_.
4. Open the _Karabiner_ app. Go to _System Preferences > Security & Privacy > Accessibility_ and allow _Karabiner__AXNotifier_. In the _Karabiner_ app, search for and enable _F19 to Escape and Control_.

[1]: http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/
[2]: https://pqrs.org/osx/karabiner/
[3]: https://pqrs.org/osx/karabiner/seil.html.en
