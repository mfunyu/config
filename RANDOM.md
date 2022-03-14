
# For myself

### キーボード速度設定
```
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 11
```

## shared
```
#oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install gh
```


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
