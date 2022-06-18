# Nim First Web Site
Minimum example of using Nim language on Netlify. [Forked from demotomohiro/netlify-nim-test repository](https://github.com/demotomohiro/netlify-nim-test)

[Visit the web page generated from this repository](https://nim-first-website.netlify.com/)

[![Netlify Status](https://api.netlify.com/api/v1/badges/cc03b0e4-abff-47f1-99f3-0fc806270d36/deploy-status)](https://app.netlify.com/sites/nim-first-website/deploys)

## How to use
* Fork or copy this repository
* Login to Netlify
* Click "New site from Git" botton
* Select the repository you forked or copied.
* Click "Deploy site"

## How it works
- Everytime you do ``git push`` to your repository, Netlify:
  - clones your repository
  - executes build command and
  - makes files under public directory accessible from the internet.
- ``build.sh``:
  - is the build command executed by Netlify.
  - When ``build.sh`` is executed, it calls ``install_nim_check`` that:
    - checks if a new Nim version is needed. Is this case:
      - downloads Nim source code and
      - builds it, so that you can use a new Nim compiler version.
      - old Nim source code will be removed.