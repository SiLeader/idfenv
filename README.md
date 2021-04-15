# idfenv - ESP-IDF version management

&copy; 2021 SiLeader and Cerussite.

## install
1. clone this repository
1. add the cloned repository path to `PATH`
1. write `source <(idfenv init)` to your `~/.bashrc` or `~/.zshrc`

## how to use
### install ESP-IDF
e.g.: install v4.2

```bash
idfenv install v4.2
```

### list the versions that can be installed
```bash
idfenv install -l
```

### use ESP-IDF
e.g.: use v4.2

```bash
idfenv local v4.2
```

## license
GNU General Public License v3.0

see LICENSE

