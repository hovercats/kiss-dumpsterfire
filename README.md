# kiss-dumpsterfire

With KISS' recent decisions to move to `wayland` and `openssl`, I decided to stay with `libressl` and `xorg`.
I like software diversity, so staying with libressl currently makes sense to me. I will likely eventually move to wayland anyway, but not at this moment. 

This repo thus does contain packages that depend on `libressl` instead of `openssl`, aswell as packages that I enjoy and/or experiment with. 
I also enjoy statically linking, so Ill regurarly add packages that Ive managed to build statically, or that Ive simply made modifications to. Static packages was initially planed to be inside my [Kiss-somethigsomethingstatici repo](https://github.com/hovercats/kiss-somethingsomethingstatic), but I decided against it, 'cause it makes more sense to me to have just one repo to work with.
Im also moving towards `LLVM` instead of `GCC`, so theres alot of files symlinked, so I dont need to do the heavy lifting.

---

Notes:

Core now contains mostly a whole core, but statically linked (libs anyway)
However, alot still links to libc.so (musl)

`musl`: require some work, due to most of the system links to it
`zlib`: also requires some work, as alot of packages depends on it.

`axel`: Im using it instead of curl, but curl is still needed by git. no libs, does not link to libc.so
`bison`: static libs, but links to libc.so
`curl`: static lib, links to libc.so, and libz.so
`flex`: same as bison
`m4`: no libs, does not link to libc.so
`make`: same as m4
`pigz`: same as m4
`xz`: static libs, links to libc.so

