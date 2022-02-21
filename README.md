# Self-paced CTF Tooling

Self-paced CTFs (like [Project Euler](https://projecteuler.net/), [cryptohack](https://cryptohack.org/), etc.) can be excellent source of skills-honing and practice, the process around diving in can sometimes be daunting.

This repository includes the skeleton I use as tooling to begin/keep working on a CTF.
In particular, this tooling was initially created while going through Project Euler using C++; however, it should be (and has been) easily adapted for other languages/CTFs.

# Usage

```console
$ make NEXT=001 next    # NEXT defaults to the numeric successor of the highest-numbered directory in $PWD
$ cd 001
$ make edit             # launch editor with all relevant files open
```

To modify this for another language, you'll need to update `skel` to include the appropriate set of files, and `skel/mk` to reflect the rules you'd like to start with (e.g., replacing the recipes for your language).

# Status

This code was all made purely to make CTFs more pleasant for myself; it doesn't include any helpful tooling to set it up for other languages (adaptations must currently be done manually).
However, I will keep updating it as my tooling wants grow; and I will happily accept changes from anyone wanting to make it more flexible.
