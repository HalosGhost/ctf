# Self-paced CTF Tooling

Self-paced CTFs (like [Project Euler](https://projecteuler.net/), [cryptohack](https://cryptohack.org/), etc.) can be an excellent source of skills-honing and practice, but the process around diving-in can sometimes be daunting.

This repository includes the skeleton I use as tooling to work on a CTF.
In particular, this tooling was initially created while going through Project Euler using C++; however, it should be (and has been) easily adapted for other languages/CTFs.

# Usage

```console
$ make next    # NEXT defaults to the numeric successor of the highest-numbered directory in $PWD (or `001` if none exist)
$ cd 001
$ make edit    # launch editor with all relevant files open
```

# Status

This code was all made purely to make CTFs more pleasant for myself.
However, I will keep updating it as my tooling wants grow; and I will happily accept changes from anyone wanting to make it more flexible.

A very minimal framework is available to set up this repository for other languages/ecosystems.
To add support for a new language or ecosystem, simply add a new directory underneath `skel.d`, and set the `BASE` make variable appropriately when `make`ing a recipe.
