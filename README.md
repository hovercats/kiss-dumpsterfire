# kiss-dumpsterfire

This is a highly experimental KISS repository, with the goal of providing a fully
functional statically linked system. 


#### Neccessary configurations for static linking: 
None.
All packages should have the neccessary flags and configurations set to build
statically.
If you wanna build a static toolchain, build gcc first, then binutils, otherwise
gcc will break. You can also use gcc-bin and binutils-bin if you wish to.
`llvm` will eventually be made available statically aswell, once I figure out how to
bootstrap it correctly.


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
