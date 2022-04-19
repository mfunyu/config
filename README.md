# 42 cluster iMac Setup

## Install 42Homebrew
#### under goinfre (recommended)

- goinfre下 (local storage) に42Homebrewをインストールする
- 以後brewでインストールするものは全てgoinfreに保存される（他のPCでは共有されない）
```
curl -fsSL https://raw.githubusercontent.com/mfunyu/config/main/42homebrew_install.sh | zsh
```
#### under HOME
- HOME下 (shared storage) に42Homebrewをインストールする
- 以後brewでインストールするものは全てのPCで共有される（メモリ容量が不足する可能性が高い）
```
curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
```
## Install valgrind
```
brew tap LouisBrunner/valgrind
brew install --HEAD LouisBrunner/valgrind/valgrind
```

# "no space left on device"

"メモリ容量が不足しています"のエラー時への対処

## Recommendation
- https://shop.intra.42.fr/ から`Home 5GB 増量`を10walletで購入する
- 合計10Gになるので、goinfreも上手く併用すれば今後困ることはほとんどなくなる

## Status Check
現在のメモリ使用量の確認方法
- activity monitor -> memoryで残量確認
- `df -h` : 残りHDD
- `df -i` : 残りinode

## Clear all cashes
- 消去可能なキャッシュを一括削除してメモリ容量を確保する
- 容量が平均1Gほど解放される
- おそらく作業に影響はでないがその保証はない
```
rm -Rfv /Library/Caches/* ~/Library/Caches/* 2> /dev/null
```

## Alias sweep
- 上記のコマンドを`sweep`にエイリアス登録して実行しやすくする

### Install
```sh
# Add sweep alias in your .zshrc if not already present
if ! grep -q "# Clear all cash for storage spaces" $HOME/.zshrc
then
cat >> $HOME/.zshrc <<EOL

# Clear all cash for storage spaces
alias sweep="rm -Rfv /Library/Caches/* ~/Library/Caches/* 2> /dev/null"
EOL
fi
```
### Usage

```
sweep
```
