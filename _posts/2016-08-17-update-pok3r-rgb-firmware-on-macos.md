---
layout: post
title: "How to: Update firmware for Pok3r (RGB) on macOS"
date: 2016-08-17
categories: posts
tags: [macos, pok3r, virtualbox]
---

The Pok3r RGB is a beautiful little mechanical keyboard that works with MacOS perfectly out of the
box.

<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:37.4074074074% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BJE6JyEhRBT/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank"><!--_-->#pok3r #pok3rrgb @vortexgear #mechanicalkeyboard #keyboard #cherrymx #coder #coderslife #pcmasterrace ⌨️🙌</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A photo posted by Son Pham (@_sonph) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2016-08-14T05:03:54+00:00">Aug 13, 2016 at 10:03pm PDT</time></p></div></blockquote>
<script async defer src="//platform.instagram.com/en_US/embeds.js"></script>

<p></p>

However if you want to update the firmware, Vortex only provides the updater in the form of an
`.exe` file, which means you'll need a Windows box to run it.

Fortunately, it is possible to run the updater in a Windows virtual machine on a Mac and forward the
keyboard as a USB device to the VM. It's surprisingly simple, and I'll show you how.

**This process also works for the regular Pok3r.**

## Download VirtualBox and a _free_ Windows virtual machine
You heard that right, _free_ as in _free beer_. It's a VM provided _by Microsoft_ for users to test
drive Microsoft Edge and IE 8-11, supposedly. [Modern.ie](http://modern.ie) (get it?)
redirects here.

Download [VirtualBox for Mac](https://www.virtualbox.org/wiki/Downloads)
(remember to select _OS Xhosts/amd64_) and
[the Windows VM](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/)
(select **on Windows 7** and **VirtualBox**).

The image weighs in at about 3.5GB.

## Load up the VM in VirtualBox
Install VirtualBox, unzip the downloaded image and double click on the `.vmdk` file to load it into
VirtualBox. You can also click on **File > Import Appliance** in the application to import.

Accept the default VM settings and you should have it listed in the sidebar of VirtualBox, like
this:

<img class="no-shadow" alt="pok3r-macos-virtualbox" src="/assets/images/pok3r-macos-virtualbox.png">

At this point you can delete the downloaded image if you want.

Double click on the VM or click **Start**.

<img class="no-shadow" alt="pok3r-macos-virtualbox-vm" src="/assets/images/pok3r-macos-virtualbox-vm.png">

## Open up IE to download the firmware updater
**Note**: The VM will capture your mouse and keyboard input, so anytime you want to **escape** back
to MacOS press the **right command** key.

Open up IE in the taskbar and navigate to `http://vortexgear.tw` and go to the **Support** page.
Download the appropriate firmware and run it.

![pok3r-macos-updater](/assets/images/pok3r-macos-updater.png)

## Forward the keyboard to the VM
Press the right command key to escape back to MacOS. Click on the menubar of the running VM and
select **Devices > USB > Holtek Semiconductor Inc.** (Holtek is the name of the company that makes
the chip that powers the keyboard). The keyboard backlighting will turn off then on.

![pok3r-macos-virtualbox-devices](/assets/images/pok3r-macos-virtualbox-devices.png)

Wait for one minute and the current firmware version should show up on the updater window.

![pok3r-macos-updater-current](/assets/images/pok3r-macos-updater-current.png)

## Update!
Click **OK** to start updating the firmware! Profits!

## Clean up
Once the firmware is updated and confirmed, shut down the machine with **Command + Q** and select
**Power off the machine**. Quit Virtualbox and delete the loaded VM.
