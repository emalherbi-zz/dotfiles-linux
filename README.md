# My dotfiles for Linux (Ubuntu)

## Instalation

```bash
$ git clone https://github.com/emalherbi/dotfiles-linux.git && cd dotfiles
```

## How to run

### Linux

```bash
$ chmod +x install
$ bash install
```

## Config

### Linux

#### E-mail

After installation, configurate to receiving emails when your PC start.

1. Edit file "linux/email-send-pc-start.sh", and change the email.

```bash
echo "Hello. Your computer $PC - $OS was connected at $DT." | mail -s "[$PC - $OS] Access $DT" email@email.com
```

2. Run the command below:

```bash
crontab -e
@reboot ~/email-send-pc-start.sh
```

#### Gitlab-runner

1. Run the command below:

```bash
crontab -e
@reboot ~/gitlab-runner.sh
```

#### Android HOME & Java HOME

Configure "ANDROID_HOME" and "JAVA_HOME" if necessary.

1. Edit file "system/.bash_aliases".

```bash
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64'
```

## Aliases

[Linux](https://github.com/emalherbi/dotfiles-linux/blob/master/system/.bash_aliases)

[Git](https://github.com/emalherbi/dotfiles-linux/blob/master/git/.gitconfig)

## Utils

[.bash_profile](https://github.com/emalherbi/dotfiles-linux/blob/master/system/.bash_profile) ✔

[.bash_aliases](https://github.com/emalherbi/dotfiles-linux/blob/master/system/.bash_aliases) ✔

[.inputrc](https://github.com/emalherbi/dotfiles-linux/blob/master/system/.inputrc) ✔

[.gitconfig](https://github.com/emalherbi/dotfiles-linux/blob/master/git/.gitconfig) ✔

[.gitignore](https://github.com/emalherbi/dotfiles-linux/blob/master/git/.gitignore) ✔

[.git-completion](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash) ✔

[.editorconfig](https://github.com/emalherbi/dotfiles-linux/blob/master/.editorconfig) ✔

## Gems e etc

```
=> linux ✔
|  => aptitude ✔
|  => xclip ✔
|  => meld ✔
|  => rar ✔
=> homebrew ✔
|  => node ✔
|  => svn ✔
|  => ant ✔
|  => vim ✔
|  => wifi-password ✔
|  => 7zip ✔
|  => yarn ✔
=> ruby ✔
|  => gem ✔
|  => cocoapods ✔
|  => jekyll ✔
=> node ✔
|  => grunt ✔
|  => grunt-init ✔
|  => bower ✔
|  => yeoman ✔
|  => ionic ✔
|  => vtop ✔
|  => nativefier ✔
|  => npm-check ✔
|  => speed-test ✔
|  => generator-play-ideia ✔
|  => generator-locawebstyle ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
