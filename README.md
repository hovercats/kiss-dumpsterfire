# kiss-dumpsterfire

This is an experimental KISS repository, with the goal of providing a fully
functional statically linked system. 
As a secondary goal, I aim to provide some options, software wise, as I find
software diversity to be important. 


#### Neccessary configurations for static linking: 
None.
All packages should have the appropriate flags and configurations set to build
statically. So in theory, there should be nothing needed for you to do
beforehand. Just build the packages you want, and youre all set (with the
exceptions of binutils, and gcc. please see below).


#### Static toolchain:
Building binutils and gcc statically, is somewhat troublesome, either one will
usually break if you build one of them statically, if youre even able to get it
to build that is. But fear not, theres a rather easy solution for this issue
anyway; in bin dir, youll find gcc-bin, and binutils-bin, both statically
linked, which is what we'll use to build gcc and binutils statically.
also; llvm is currently not statically linked, as I havent figured out how
to do so yet. It is however, still present in the repo, if you wish to use it.


##### Quick guide:
* install gcc-bin, and binutils-bin
* use `kiss a` to switch to both of them
	* doesnt matter if your using llvm, or binutils/gcc.
* rebuild gcc and binutils from this repo. 
* use `kiss a` again, to switch to your newly built binutils and gcc
	* optional: run `ldd` on both, to verify if its statically linked.
* uninstall gcc-bin and binutils-bin, as you now no longer need them. 
* If they fail, you may need to build m4, byacc and flex beforehand.
	* youll also need to use gnu's make, as your make, if youre using wyverkiss
		* not gmake. it needs to be the make pkg, as vanilla KISS uses.

Ive tested and confirmed that this works, from a wyverkiss tarball.


#### A word of advice:
Have a spare unpacked tarball available, aswell as exported binaries of packages youve
previously built. This will come in handy if something breaks when building
statically. if youre using a fresh tarball, this may or may not be too much of
an issue. 

#### Notes:
If youre planning to build a semi-static system, please consider building
`musl`, and `zlib`, with shared libs. Alot of packages link to libc.so
and libz.so, and if theyre missing, youll have issues building stuff that needs
them. 

---
If any issues arise, or you have any suggestions or ideas youd wish to share, feel free to
open up a PR or an issue, and we'll see what we can do.
