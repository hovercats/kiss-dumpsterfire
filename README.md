# kiss-dumpsterfire

With KISS' recent decisions to move to `wayland` and `openssl`, I decided to stay with `libressl` and `xorg`.
I like software diversity, so staying with libressl currently makes sense to me. I will likely eventually move to wayland anyway, but not at this moment. 

This repo thus does contain packages that depend on `libressl` instead of `openssl`, aswell as packages that I enjoy and/or experiment with. 
I also enjoy statically linking, so Ill regurarly add packages that Ive managed to build statically, or that Ive simply made modifications to. Static packages was initially planed to be inside my [Kiss-somethigsomethingstatic repo](https://github.com/hovercats/kiss-somethingsomethingstatic), but I decided against it, 'cause it makes more sense to me to have just one repo to work with.
Im also moving towards `LLVM` instead of `GCC`, so theres alot of files symlinked, so I dont need to do the heavy lifting.

---

Notes:

Core now contains almost a whole core, which builds statically.
The exceptions are:

* `musl`: this ones a bit tricky, so this will really need some looking into.
* `zlib`: also requires some work, as alot of packages depends on it.
 * once I get llvm to work as I want, zlib will probably soon follow
* `llvm`: still working some stuff out
