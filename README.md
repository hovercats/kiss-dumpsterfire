# kiss-dumpsterfire

With KISS' recent decisions to move to `wayland` and `openssl`, I decided to stay with `libressl` and `xorg`.
I like software diversity, so staying with libressl currently makes sense to me. I will likely eventually move to wayland anyway, but not at this moment. 

This repo thus does contain packages that I use, which depend on `libressl` instead of `openssl`, `llvm` instead of `gcc`,aswell as packages that I enjoy and/or experiment with. 
I also enjoy static linking, so alot of packages here will be built statically (if I figured out how), or that Ive simply made modifications to. 
Static packages was initially planed to be inside my [Kiss-somethigsomethingstatic repo](https://github.com/hovercats/kiss-somethingsomethingstatic), but I decided against it, 'cause it makes more sense to me to have just one repo to work with.

---

Notes:

Core now contains almost a whole core, which builds statically.
The exceptions are:

- `musl`: this ones a bit tricky, so this will really need some looking into.
- `zlib`: also requires some work, as alot of packages depends on it.
- `llvm`: still working some stuff out
- `libressl`: builds perfectly fine statically 
	- however, when doing so; `python` wont build `_ssl` module, or alot others for that matter.
	- this will break building `firefox`, among other things

- `links2` & `lynx` is also built statically, so we  now have statically linked browsers aswell.
