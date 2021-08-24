export PATH=/usr/local/bin:$PATH

alias python3="/Library/Frameworks/Python.framework/Versions/3.9/bin/python3"
alias pip3="/Library/Frameworks/Python.framework/Versions/3.9/bin/pip3"

alias ctf='source ~/Settings/shellscript/ctf.sh'
#alias ctf='docker run -v ~/Desktop/ctf/:/home/ctf -it ctf'

alias norm="norminette"
alias normerr="norminette | grep -v \"OK!\""
alias normpdf="open /Users/u_2/.norminette/pdf/ja.norm.pdf"

# shellscript shortcuts
## NYU
alias submit="bash ~/Settings/shellscript/submitlab.sh"
alias lab="bash ~/Settings/shellscript/mkdirlab.sh"
alias zipdir="bash ~/Settings/shellscript/zipfile.sh"
alias pj="source ~/Settings/shellscript/groupProject.sh"

## atcoder
export BC4B="Medium"
alias atcoder="source ~/Settings/shellscript/atcoder.sh"
alias abc="source ~/Settings/shellscript/abc.sh"

## 42
alias review="source ~/Settings/shellscript/review.sh"
alias check="bash ~/Desoktop/42cursus/FT_MINI_LS/review/diffcheck.sh"

alias vocab="python3 /Users/u_2/Desktop/my\ work/Vocaburalies/main.py"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
