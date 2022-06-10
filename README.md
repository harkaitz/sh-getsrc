# GETSRC

Script to homogenize software downloading and building. This way you can
write this kind of automations easier.

All this functions return the source directory generated/downloaded/searched for.

- [getsrc-git](./bin/getsrc-git) : Download a Git project to a local directory.
- [getsrc-tar](./bin/getsrc-tar) : Download/Extract a tar project to a local directory.
- [getsrc-cached](./bin/getsrc-cached) : Download a single file to a cache directory.
- [getsrc-newdir](./bin/getsrc-newdir) : Create an empty project directory in local directory.
- [getsrc-user](./bin/getsrc-user) : Search a project in user's work directories.
- [getsrc-upload](./bin/getsrc-upload) : Upload a project to a remote machine's directory.

## Examples.

Write an script that downloads a C project and build's it.

    set -e # Make the shell script fail in case of errors.
    srcdir="`getsrc-git "https://github.com/harkaitz/c-mht.git"`"
    test -n "${srcdir}" # Ensure download succeeded.
    cd "${srcdir}"
    make clean all
    sudo make install

## Help

getsrc-cached

    Usage: getsrc-cached [-v][-f][-n FILENAME] URL [CDIR]
    
    Download a file to a local cache directory optionally
    with a FILENAME. Check honored environment variables
    with -v. Force download with -f.
    

getsrc-git

    Usage: getsrc-git [-v][-n NAME][-N] URL[,BRANCH] [SDIR]
    
    Download a git repository to a directory, optionally to
    SDIR. Check honored environment variables with -v. Force
    download with -f.

getsrc-newdir

    Usage: getsrc-newdir NAME
    
    Create empty directory in $GETSRC_DIR.

getsrc-tar

    Usage: getsrc-tar [-n NAME][-c 0] URL [SDIR]
    
    Download a tar, choose a place for it, extract and print the directory
    onto which it was downloaded. With -c tell how much components to strip.

getsrc-upload

    Usage: getsrc-upload DIR SSH [NAME]
    
    Upload source directory DIR to remote machine SSH. You
    can then use `getsrc-user -s NAME` in the remote machine
    to pick this directory.

getsrc-user

    Usage: getsrc-user NAME [SDIR]
    
    Get sources from user's own directories.
    
    -v : Show configuration.
    -s : Fall back to [SDIR] [$GETSRC_DIR]

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

