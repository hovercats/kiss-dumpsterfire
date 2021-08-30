# kiss-dumpsterfire

This is an expierimental KISS-repo, with static linking, and software diversity
in mind.
Having multiple choises made sense to me, with KISS' principles with no lock-in
on Y software.
The goal of this repo, is to be able to provide a statically built system, with
*everyday* stuff like a browser and a texteditor.
Seeing as this repos secondary goal is to provide software diversity,
`libressl` is still present in this repo, aswell as `xorg`.
`Wayland` will also be added later, once I find the time.
`Openssl` and `bearssl` might also be added (maybe).

If youre wondering if an included pkg builds statically or not, please refer to
buildscript, or commitlog. I usually specify "static" in commit message if its
added before Ive managed to build it statically.
Or just build it and run `ldd` on the binary, after its built.
All buildscripts for packages that is set to build statically, should have the
appropriate flags set per-package, instead of setting them system-wide.
I found this to be less breaking when building other non-static stuff.
Just build packages, and youre set.

As of
[610b51c](https://github.com/hovercats/kiss-dumpsterfire/commit/610b51c567b0ffb9d0c35c6f286817006c62f331), we now have a static toolchain, and you can now build a completely static core, comming from a non-static tarball (which is what Ive done whilst creating the static parts of this repo).
If your coming from a fully working enviroment, be carefull about what you
build statically, as you may end up breaking more than you wish for. 
Coming from a working system, you should make sure that pkgs that depend on
`zlib`, no longer links to `libz.so` before building `zlib` with only static
libs. Same with `musl`'s `libc.so`, otherwise youll break all pkgs linking to said libs.
Id advice you to build the toolchain first (`gcc` `binutils` etc),
then work from there.

If any issues arise, or you have any suggestions or ideas youd wish to share, feel free to
open up a PR or an issue, and we'll see what we can do.
