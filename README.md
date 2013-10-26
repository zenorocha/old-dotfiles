# Zeno's dotfiles

*TODO: Take a screenshot*

## Dependencies

### 1. Run Software Update

Make sure everything is up to date.

![Software Update](http://f.cl.ly/items/382O04411U0a1i0G2E3j/software-update.png)

### 2. Install [Xcode](https://itunes.apple.com/us/app/xcode/id497799835)

[![Xcode - Apple](http://r.mzstatic.com/images/web/linkmaker/badge_macappstore-lrg.gif)](https://itunes.apple.com/us/app/xcode/id497799835)

### 3. Install [Xcode's "Command Line Tools"](https://developer.apple.com/downloads/index.action)

```sh
xcode-select --install
```

> **Notice:** this only works for Mac OS X Mavericks (10.9). For earlier versions, continue to use the in-app download in Xcode.

## How to install?

### Command-line tools

```sh
curl -L https://raw.github.com/zenorocha/dotfiles/master/bootstrap.sh | sh
```

This will clone this repository and symlink the appropriate files in `~/.dotfiles` to your home directory.

### Softwares

```sh
curl -L https://raw.github.com/zenorocha/dotfiles/master/apps.sh | sh
```

Many softwares can be installed through [homebrew-cask](https://github.com/phinze/homebrew-cask) which makes the process way simpler.

> **Attention:** the list of softwares is big, so be careful before running this command.

## How to update?

Just go to `~/.dotfiles` and pull.

```sh
git pull origin master
```

## What's included?

### Command-line tools

###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for tweaking

###### General

* [Homebrew](http://mxcl.github.com/homebrew/) for MacOS X package management
* [Git](http://git-scm.com) for code versioning
* [NodeJS]() for JavaScript programming
* [Z]() for quick search through files

###### NodeJS

* [Bower]() for front-end package management
* [DocPad]() for static generated websites
* [Grunt]() for workflow automation
* [JSHint]() for code quality

###### Ruby

* [Compass]() for Sass programming
* [Jekyll]() for static generated websites

### Softwares

###### Backup

* [Cloud]() for file/link sharing
* [Dropbox]() for file sync

###### Browser

* [Firefox Aurora]()
* [Chrome Canary]()
* [Opera Next]()

###### Dev

* [Filezilla]() for FTP
* [Sourcetree]() for Git GUI
* [iTerm 2]() for Terminal Client
* [Virtualbox]() for Virtual Machines
* [Dash](http://kapeli.com/) for Documentation Interface

###### Productivity

* [Mou]() for Markdown Editing
* [Alfred](http://www.alfredapp.com/) for Workflow Automation
* [Divvy](http://mizage.com/divvy/) for Window Management
* [Evernote]() for Presentation Notes
* [1Password]() for Password Management
* [Caffeine]() for ...

###### Others

* [uTorrent](http://www.utorrent.com/) for Torrent Download
* [Skype]() for 
* [Fantastical](http://flexibits.com/fantastical) for Calendar Interface to Google Calendar
* [LICEcap]() for GIF recording
* [Lime Chat]() for IRC
* [Unarchiver]() for ZIP, RAR, etc

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

* Iterative installation based on [@holman's dotfiles](https://github.com/holman/dotfiles)
* ZSH plugins based on [@eduardolundgren's dotfiles](https://github.com/eduardolundgren/dotfiles)
* Software installation based on [@millermedeiros's gist](https://gist.github.com/millermedeiros/6615994)
* Colorful logs based on [@davidsonfellipe's dotfiles](https://github.com/davidsonfellipe/dotfiles)

## History

See releases list.

## License

[MIT License](http://zenorocha.mit-license.org/) © Zeno Rocha