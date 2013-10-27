# Zeno's dotfiles

I'm in a hospital in Spain and my MacBook was stolen.

![Hospital Commit](http://f.cl.ly/items/432c1g1V0B3s1l1j0j2Z/hospital-commit.jpg)

So I had to buy a new one and now I need to configure it.

I have an external hard drive that backup everything using [Time Machine](http://www.apple.com/osx/apps/#timemachine), but I don't want all the crap I had in the old one. That's why I finally decided to stop using other's people dotfiles and created my own.

## What's included?

Basically everything I use.

Here you can find not only my command-line tools and its configurations, but also the whole list of apps I'm using.

### Command-line tools

###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Theme

* [Galleta](https://github.com/zenorocha/galleta-theme) for better syntax highlight on iTerm2 and Terminal app

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

### Softwares

###### Backup

* [Cloud](http://getcloudapp.com/) for file/link sharing
* [Dropbox](https://www.dropbox.com/) for file syncing

###### Browser

* [Firefox Aurora](http://www.mozilla.org/en-US/firefox/aurora/)
* [Chrome Canary](https://www.google.com/intl/en/chrome/browser/canary.html)
* [Opera Next](http://www.opera.com/computer/next)

###### Dev

* [FileZilla](https://filezilla-project.org/) for file transfer
* [SourceTree](http://www.sourcetreeapp.com/) for Git GUI
* [iTerm 2](http://www.iterm2.com/#/section/home) for terminal client
* [VirtualBox](https://www.virtualbox.org/) for virtual machines
* [Dash](http://kapeli.com/) for documentation lookup

###### Productivity

* [Mou](http://mouapp.com/) for markdown editing
* [Alfred](http://www.alfredapp.com/) for workflow automation
* [Divvy](http://mizage.com/divvy/) for window management
* [Evernote](http://evernote.com/) for presentation notes
* [1Password](https://agilebits.com/onepassword) for password management
* [Caffeine](http://lightheadsw.com/caffeine/) for keeping Mac awake

###### Others

* [uTorrent](http://www.utorrent.com/) for torrent download
* [Skype](http://www.skype.com/en/) for international calls
* [Fantastical](http://flexibits.com/fantastical) for calendar interface to Google Calendar
* [LICEcap](http://www.cockos.com/licecap/) for GIF recording
* [LimeChat](http://limechat.net/mac/) for IRC
* [Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver) for ZIP, RAR, etc

Unfortunately some apps aren't available through [homebrew-cask](https://github.com/phinze/homebrew-cask), so you need to install it **manually**.

* [Adobe Suite](http://www.adobe.com/products/creativecloud.html) for image manipulation
* [ScreenFlow](http://www.telestream.net/screenflow/) for screencast recording and video editing

## How to install?

First of all, go to [Dependencies](#dependencies) and then come back here.

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

## How to update?

Just go to `~/.dotfiles` and pull.

```sh
git pull origin master
```

## Credits

* Iterative installation based on [@holman's dotfiles](https://github.com/holman/dotfiles)
* ZSH plugins based on [@eduardolundgren's dotfiles](https://github.com/eduardolundgren/dotfiles)
* Software installation based on [@millermedeiros's gist](https://gist.github.com/millermedeiros/6615994)
* Colorful logs based on [@davidsonfellipe's dotfiles](https://github.com/davidsonfellipe/dotfiles)

## Contributing

If you want to help, please read the [Contributing](https://github.com/zenorocha/dotfiles/blob/master/CONTRIBUTING.md) guide first.

## History

For detailed changelog, see [Releases](https://github.com/zenorocha/dotfiles/releases).

## License

[MIT License](http://zenorocha.mit-license.org/) © Zeno Rocha