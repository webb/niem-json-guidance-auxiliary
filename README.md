---
title: README
---

The NIEM JSON Guidance Auxiliary repository

# Installing

To install, execute the configure script, providing the source directory for the NIEM.github.io repo. For example:

```bash
$ ./configure --with-site-dir=../site
```

# Updating this repo

Have the configure script locate core concepts needed for `make` (i.e., building
all artifacts) and `make install`. Don't have the configure script locate things
needed only for validation.

## Setting up configure

To get configure scripts updated, run:

```bash
$ make -f unconfigured.mk
```

