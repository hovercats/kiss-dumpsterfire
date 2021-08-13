# kiss-dumpsterfire

This is my personal KISS-repo, for stuff I enjoy using or experimenting with.
It consist of mostly statically linked packages, but not everything (although, if
it were up to me, it would).
Im also chose to stay with using `libressl`, aswell as `xorg`. 
Wayland however is on my todo list, but this will come whenever. 

---

Some notes regarding statically linked stuff:

Core now contains almost a whole core, which builds statically.

Some minor exceptions:
- `musl`: this ones a bit tricky, so this will really need some looking into.
- `zlib`: also requires some work, as alot of packages depends on it.
- `llvm`: still working some stuff out
- `libressl`: builds perfectly fine statically 
	- however, when doing so; `python` wont build `_ssl` module, or alot others for that matter.
	- this will break building `firefox`, among other things

Other stuff:
*Generally, looking at the buildscript will tell you wether its static or not*
- `links2` & `lynx` is also built statically, so we  now have statically linked browsers aswell.
	- Im also working on building `surf`/`vimb`statically + `webkit2gtk`
	- so we get graphical browsers aswell
	- Im also interested in trying to compile something QT based. 
		- i.e. Qutebrowser.
		- however, this will, (if ever), come later down the line.
- `st` is now built statically.
	- neccessary libs are included in repo
		- I did not exclude shared libs, as this will obviously break alot of stuff
