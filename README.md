# kiss-dumpsterfire

This is an expierimental KISS-repo, with static linking, and software diversity
in mind.
Having multiple choises made sense to me, with KISS' principles with no lock-in
on Y software.
The goal of this repo, is to be able to provide a statically built system, with
*everyday* stuff like a browser and a texteditor.
Seeing as this repos secondary goal is to provide software diversity, thus
`libressl` is still present in this repo, aswell as `xorg`.
`Wayland` will also make an appearance later on, when I sort some stuff out.

If youre wondering if an included pkg builds statically or not, please refer to
buildscript, or commitlog. I usually specify "static" in commit messege if its
added before Ive managed to build it statically. Or just build it and run
`ldd` on the binary.
All buildscripts for packages that is set to build statically, should have the
appropriate flags set per-package, instead of setting them system-wide.
I found this to be less breaking when building other non-static stuff.
Just build packages, and youre set.

If your coming from a fully working enviroment, be carefull about what you
build statically, as you may end up breaking more than you wish for. 
A perfect example of this is if you try to build zlib statically, while things
is still depending on zlibs shared libs.

If any issues arise, or you have any suggestions or ideas youd wish to share, feel free to
open up a PR or an issue, and we'll see what we can do.
