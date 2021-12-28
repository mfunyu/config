# Installations

## for 42 cluster
```
#install 42Homebrew
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

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
```
cd /Users/mfunyu/Library/Caches
ls -l | sort -k5n
rm -Rf vscode-cpptools
go clean -cache -testcache
rm -R pip
rm -Rf /Users/mfunyu/Library/Caches/Google/Chrome/Default/Code\ Cache
rm -Rf /Users/mfunyu/Library/Caches/Google/Chrome/Default/Cache
```
