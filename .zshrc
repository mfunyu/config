# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/u_2/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="theunraveler"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
prompt_context(){}
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
export USER=mfunyu
export MAIL="mfunyu@student.42tokyo.jp"
alias review="source ~/Settings/shellscript/review.sh"
alias check="bash ~/Desktop/42cursus/FT_MINI_LS/review/diffcheck.sh"
alias 42="cd ~/Desktop/42cursus"
alias ide="source ~/Settings/shellscript/ide.sh"

alias vocab="python3 /Users/u_2/Desktop/my\ work/Vocaburalies/main.py"

# ----------------------------------------------------------------------
# fzf
# ----------------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#export FZF_DEFAULT_COMMAND='find . $HOME 2> /dev/null'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!vendor/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!vendor/*" 2> /dev/null'
export FZF_CTRL_T_OPTS='-e --preview "bat  --color=always --style=header,grid --line-range :100 {}"'
export FZF_ALT_C_OPTS='-e --preview "bat  --color=always --style=header,grid --line-range :100 {}"'
alias fzf='fzf --preview "bat  --color=always --style=header,grid --line-range :100 {}"'
fvi() {
	local file
	file=$(fzf)
	if [ "$file" ]; then
		echo $file
		vi "$file"
	fi
}
