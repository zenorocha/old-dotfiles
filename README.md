# Zeno's dotfiles

*TODO - Take a screenshot*

> If you're setting up a new Mac, take a look at [this Gist](https://gist.github.com/zenorocha/7159780) — there you can find many instructions and also the whole list of apps I'm using.

## What's included?

All my command-line tools and its configurations. Have fun :)

###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Theme

* [Dracula](https://github.com/zenorocha/dracula-theme) for better syntax highlight

###### General

* [Homebrew](http://mxcl.github.com/homebrew/) for MacOS X package management
* [Git](http://git-scm.com) for code versioning
* [NodeJS](http://nodejs.org/) for JavaScript programming
* [Z](https://github.com/rupa/z/) for quick navigation through folders

###### NodeJS

* [Bower](http://bower.io/) for front-end package management
* [DocPad](http://docpad.org/) for static generated website development
* [Grunt](http://gruntjs.com/) for task automation
* [JSHint](http://www.jshint.com/) for JavaScript code quality

###### Ruby

* [Compass](http://compass-style.org/) for Sass programming
* [Jekyll](http://jekyllrb.com/) for static generated website development

## How to install?

```sh
curl -L https://raw.github.com/zenorocha/dotfiles/master/bootstrap.sh | sh
```

This will clone this repository and symlink the appropriate files in `~/.dotfiles` to your home directory.

## How to update?

Just go to `~/.dotfiles` and pull.

```sh
git pull origin master
```

## Credits

* Iterative installation based on [@holman's dotfiles](https://github.com/holman/dotfiles)
* ZSH plugins based on [@eduardolundgren's dotfiles](https://github.com/eduardolundgren/dotfiles)
* Colorful logs based on [@davidsonfellipe's dotfiles](https://github.com/davidsonfellipe/dotfiles)

## Contributing

If you want to help, please read the [Contributing](https://github.com/zenorocha/dotfiles/blob/master/CONTRIBUTING.md) guide first.

## History

For detailed changelog, see [Releases](https://github.com/zenorocha/dotfiles/releases).

## License

[MIT License](http://zenorocha.mit-license.org/) © Zeno Rocha