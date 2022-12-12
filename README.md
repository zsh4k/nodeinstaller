# Node installer and update manager

### Install the latest version of node

This is a simple node installer and updater for x64 based linux operating systems.

Using golang it scrapes and downloads the latest version of nodejs
and then with a shell script installs and configures it automatically.

Golang goes to https://nodejs.org/download and downloads the necessary binaries
nd files, then it will place them in the path
/usr/local/lib/node and finally add the path to the environment variable and update it.

## Usage

```shell

    git clone https://github.com/zsh4k/nodeinstaller.git
    cd nodeinstaller
    sudo chmod +x ./index.sh
    source ./index.sh
```

> 1 Clone repository
> 2 move to folder
> 3 Set permissions
> 4 execute

## Build

If you want to compile yourself the binary made in golang,
remember to have golang installed and then run

```shell
    go build ./go.files/get.last.version.go
```
