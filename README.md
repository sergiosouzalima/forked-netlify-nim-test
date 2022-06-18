# Nim Web Site on Netlify
Minimum example of using Nim language on Netlify. [Forked from demotomohiro/netlify-nim-test repository](https://github.com/demotomohiro/netlify-nim-test)

[Visit the web page generated from this repository](https://nim-first-website.netlify.com/)

[![Netlify Status](https://api.netlify.com/api/v1/badges/cc03b0e4-abff-47f1-99f3-0fc806270d36/deploy-status)](https://app.netlify.com/sites/nim-first-website/deploys)

## How to use
* Fork or copy this repository.
* Based on this repository, create and push your own repo to Github.
* Login to Netlify.
* Click "New site from Git" botton.
* Select the repository you created.
* Click "Deploy site".

## How it works
- Everytime you do ``git push`` to your Git repository, Netlify:
  - clones your repo
  - executes the build command
  - makes files under public directory accessible from the internet.
- ``build.sh``:
  - is the build command executed by Netlify.
  - When ``build.sh`` is executed, it calls ``install_nim_check`` that:
    - checks if a new Nim version is needed. Is this case:
      - downloads Nim source code and
      - builds it, so that you can use a new Nim compiler version.
      - Old Nim source code will be removed.
    - compiles & executes mainapp.nim
