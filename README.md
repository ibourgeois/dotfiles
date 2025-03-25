# My Dotfiles

This repo is meant to allow me to setup a new mac device as quickly as possible, and keep it up to date. Feel free to fork this repo, and make whatever changes you'd like!

## Installation

- Fork this repository:

[https://github.com/ibourgeois/dotfiles/fork](https://github.com/ibourgeois/dotfiles/fork)

- Clone your fork, locally:

```sh
git clone git@github.com:<your-github-username>/dotfiles.git
```

> Be sure to replace `<your-github-username>`!

- Remove anything you don't want.

> Check the `.zshrc`, `.zprofile` and the `.update.sh` files.

- Run the install script:

```sh
cd dotfiles
./install.sh
```

> This will setup symlinks to your new dotfiles, install Homebrew, Oh-My-ZSH, and any applications listed in the `update.sh` script.

## Usage

Once installed, you have access to a new alias `update` you can run in your terminal anytime you want to update your dotfiles and the applications that you manage with your new `update.sh` script!

If you want to add a new application, search for the proper command on the [Homebrew site](https://formulae.brew.sh/), and edit the `update.sh` script to include your new app. Then open your terminal and run the `update` command!

## Warning

Make sure you do not add any secrets to your new `dotfiles` repo!
