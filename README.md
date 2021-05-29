# kiss-dumpsterfire


Just a repo containing packages I use, or experiment with. It has alot of smaller, more minimalistic software, which may, or may not adhere to the UNIX philosophy, which is nice. 
Currently it is depending on [Kiss' main repo](https://github.com/kiss-community/repo-main) and [Kiss Community repo](https://github.com/kiss-community/repo-community) for alot of dependencies, but you probably have those already anyway for your other stuff, so it doesnt matter.
Packages not in the afforementioned repos, should be provided here. 

---

Current packages:
- `Brightnessctl`: As the name implies, controls screen brightness
- `Devour`: Similar to DWM's swallow patch, but not WM dependent. Can even be used in a filemanager
- `Dmenu`: Luke Smiths fork of suckless' Dmenu
- `Glazier`: Really minimal WM. Works great in conjunction with wmutils.
- `ST`: My personal build of ST with a set of patches and changes
- `wmutils`: window manipulation tool. works great standalone, or with other WMs like Glazier or SOWM.
- `wmutils-opt`: Addon for wmutils, for mouse suppor, and a window even watcher.
- `meh`: Simple image viewer. Crops images to a more usable size, instead of forcing fullscreen like feh.
- `eiwd`: Iwd without dbus. uses Illilitis's fork.
- `xev`: X event printer. Usefull for finding keysyms for a hotkeydeamon like sxhkd.
- `no-wm`: use X11 without a WM. Can be usefull to use with wmutils, to handle focus.
- `xdotool`: Fake mouse/keyboard input, and window management etc.

---

### To do:

- [ ] Find and package more cool software.
	- Neverending, probably.
- [ ] Switch out some core packages like toybox instead of busybox, then add it here
- [ ] Make repo independent of core repos
- [ ] Package Tor browser.
	- Has a glibc rust dependency, so need to figure out how to bypass this, seeing as Kiss uses musl libc.
	- perhaps use Micha Flee's torbrowser-launcher
- [ ] Package plan9port by User Space.
	- possibly steal 9base aswell, but plan9port seems more complete afaik.
	- package Rio aswell, or other plan9 related software thats not bundled with plan9port.
- [ ] Wayland?
- [ ] Package the kernel for easier updating.
