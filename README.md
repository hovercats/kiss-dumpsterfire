# kiss-dumpsterfire

This is an expierimental KISS-repo, with static linking, and software diversity
in mind.
Having multiple choises made sense to me, with KISS' principles with no lock-in
on Y software.
The goal of this repo, is to be able to provide a statically built system, with
*everyday* stuff like a browser and a texteditor.
Seeing as this repos secondary goal is to provide software diversity,
`libressl` is still present in this repo, aswell as `xorg`.
`Openssl` and `bearssl` might also be added (maybe).
Im also using partially wyverkiss, so some core componets reflects this
`wayland` is partially added. Ive added some packages, but its not complete yet.
Im still missing a terminal, and a wm + some extra related stuff

---
If youre wondering if an included pkg builds statically or not, please refer to
commit log, buildscript, or just run `ldd` on the respective bins
All buildscripts for packages that is set to build statically, should have the
appropriate flags set per-package, instead of setting them system-wide.
I found this to be less breaking when building other non-static stuff.
Just build packages, and youre set.

---
As of
[610b51c](https://github.com/hovercats/kiss-dumpsterfire/commit/610b51c567b0ffb9d0c35c6f286817006c62f331), we now have a static toolchain, and you can now build a completely static core, coming from a non-static tarball (which is what Ive done whilst creating the static parts of this repo).

---
Some important notes before you jump head first into this:
If you wanna convert over to a static system, be carefull with what you build
statically, as you can easily break your system. Do yourself a favor, and have a
backup tarball available, so you can copy libs over from a working system, over
to your newly broken system. Its also adviceable to export your already prebuilt
packages, as sometimes a package builds, but doesnt work, making you unable to
i.e. compile stuff, if you build gcc statically. (Ive had issues with this
earlier). 

##### How to build a static system:
Its adviceable to come from a fresh tarball, but a working system also works
(Ive used a working system myself, so I know it works. It just takes time, and
alot of breaking other packages)

* build `byacc`(if you prefer bison, its available in extra. just change byacc
	to bison wherever its listed as a dep)
* build `m4` (m4 in core is bsd-m4, which works for most packages. if you want
	gn4-m4. same procedure as bison)
* build `flex`
* build `binutils`
	* if binutils fail, uninstall it, and install `binutils-bin` from bin dir
		* or use kiss a
	* then proceed to build binutils
* build `gcc`
	* same step as `binutils`
* if you used *-bin packages, switch to youre newly build static toolchain
* if you wanna make sure if theyre static, run `ldd` on the bins
* rebuild the rest of core
* build the rest of your system that youd want to have.
	* if you want to have a semi-static system, it may be adviceable to not
		build `zlib` and `musl` statically, as things will probably have issues
		building, because most will expect libc.so and libz.so, which doesnt
		exist anymore

---
If any issues arise, or you have any suggestions or ideas youd wish to share, feel free to
open up a PR or an issue, and we'll see what we can do.
