# kiss-dumpsterfire


Just a repo with some packages that I use or experiment with. 

Currently depends on [kiss' main repo](https://github.com/kiss-community/repo-main) and [community](https://github.com/kiss-community/repo-community) repo.
Some of the buildscripts might not work, so you may have to build them yourself from git instead. hence the name of the repo. If that is the case, it should be stated below in package description. 


Current packages:
- Brightnessctl
	- Just controls your screen brightness. as simple as that.
- Devour
	- Basiclly a swallow utility, like DWM swallow patch, but its WM independent.
	- ~~requires root priviligies to build, for some reason~~ works like intended
- Dmenu
	- Luke Smith's fork of Dmenu
- Glazier
	- Really minimal WM
	- Buildscript is ~~currently broken~~ now working
- Libwm
	- dependency
- ST
	- My personal build of st
- wmutils
	- really neat utility for manipulating x11 windows.
	- can be used standalone, or in conjuction with glazier, sowm or w/e
- wmutils-opt
	- addon for wmutils, for mouse support and reading x events
- meh
	- simple image viewer
	- lets you view images cropped down, instead of always fullsize lik feh
- eiwd
	- iwd withot dbus
	- uses illiliti's fork, as dylan's is no longer maintained.
- xev
	- X event printer
	- usefull for finding name of keys etc
- no-wm
	- use X11 without window manager
	- could be usefull with wmutils
	- ~~requires root previliges to build for some reason~~ works as intended
