# netlify-nim-test
Minimum example of using Nim language on Netlify.

[![Netlify Status](https://api.netlify.com/api/v1/badges/cc03b0e4-abff-47f1-99f3-0fc806270d36/deploy-status)](https://app.netlify.com/sites/spontaneous-licorice-9893bb/deploys)


[Web page generated from this repository](https://use-nim-on.netlify.com/)

## How to use
* Fork or copy this repository
* Login to Netlify
* Click "New site from Git" botton
* Select the repository you forked or copied.
* Click "Deploy site"

## How it works
* Everytime you do git push to your repository, Netlify clones your repository, executes build command and makes files under public directory accessible from internet.
* ``bash build.sh`` is the build command executed by Netlify.
* build.sh calls ``install_nim_check`` that downloads Nim source code and builds it so that you can use Nim compiler.
* Next time you do ``git push`` to your repo, Nim compiler will build on previous time it was used.
* When you specify newer version of Nim in build.sh, old Nim compiler will be removed, new Nim source code will be downloaded and built.
