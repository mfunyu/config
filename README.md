# Installations

## for 42 cluster
```
#install 42Homebrew
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install.sh?token=AONLMXML2UN7JDWAZDBQV3DBZRJQ6 | zsh

#valgrind
brew tap LouisBrunner/valgrind
brew install --HEAD LouisBrunner/valgrind/valgrind

brew install gh
brew install telnet

```

## shared
```
#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install gh
```

# no space left on device
- activity monitor -> memoryで残量確認
- `df -h` : 残りHDD
- `df -i` : 残りinode
```
du -x -m -d 5 / 2> /dev/null | awk '$1 >= 1000{print}'
rm -rf /Library/Caches/* ~/Library/Caches/* 2> /dev/null
```
```
cd /Users/mfunyu/Library/Caches
ls -lR | sort -k5n
rm -Rf vscode-cpptools
go clean -cache -testcache
rm -R pip
rm -Rf /Users/mfunyu/Library/Caches/Google/Chrome/Default/Code\ Cache
rm -Rf /Users/mfunyu/Library/Caches/Google/Chrome/Default/Cache
rm -Rf Homebrew/downloads
rm -Rf Homebrew/go_cache/*
```
