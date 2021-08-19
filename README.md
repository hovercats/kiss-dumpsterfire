# kiss-dumpsterfire

This is my personal KISS-repo, for stuff I enjoy using or experimenting with.
It consist of mostly statically linked packages, but not everything (although, if
it were up to me, it would).
I also chose to stay with using `libressl`, aswell as `xorg`. 
Wayland however is on my todo list, but this will come whenever. 

---

Some notes regarding statically linked stuff:

Core now contains almost a whole core, which builds statically.
Note: this is taken into consideration that youre comming from a working system,
and not a new install.

Some minor exceptions:
- `musl`: this one is rather tricky
	- most stuff usually links to libc.so
- `zlib`: also requires some work, as alot of packages depends on it.
	- if you build zlib statically, most stuff breaks
	- need to build a static toolchain
- `llvm`: still working some stuff out
- `gcc`: same ass `llvm`
- `libressl`: builds perfectly fine statically 
	- however, when doing so; `python` wont build `_ssl` module, or alot others for that matter.
	- this will break building `firefox`, among other things

Extra and Xorg:
*Generally, looking at the buildscript will tell you wether its static or not*
- Most stuff in extra, is now statically built
- Xorg, is now almost also static
	- `xorg-server` is however still now built statically
		- due to `mesa`doesnt by default.
		- and I havent figured out how to make it do so, yet.

I will be making an Issue soon, to provide a better overview on whats what.
This will also serve as a todo list for me.

