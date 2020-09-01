# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zsh features I should use more:
# - expand directory names with tab complete

# where to save shell history
HISTFILE=~/.histfile
# number of lines to save to HISTFILE
HISTSIZE=1000
# number of lines to save in shell
SAVEHIST=1000

# Use Emacs keybindings (Ctrl-A to beginning of line is the only thing I know)
bindkey -e # use -v for vi key bindings

# The following (non-comment) lines were added by compinstall
# compsys is responsible for tab completion
# zstyle explanation: https://unix.stackexchange.com/questions/214657/what-does-zstyle-do
zstyle :compinstall filename '/home/vedantroy/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Faster terminal prompt
# We use powerlevel10k because it slightly increases speed, which is helpful
# because nvm takes a while to load
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# Fish-like auto suggestions
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fish-like syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://github.com/junegunn/fzf
# fzf stores its shell integrations in /usr/share/fzf
# Ctrl-T = paste directory/file into command line
# Ctrl-R = better recent command search
# Alt-C = cd into directory
# ** <TAB> to search through files
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# https://stackoverflow.com/questions/28491458
# TODO: Make this a templated-value that is patched by the bootstrap script
# DEFAULT_USER="vedantroy"

# fasd integration
# https://github.com/clvv/fasd
eval "$(fasd --init auto)"

# Edit whatever file fasd finds with vim
alias v='fasd -e vim -f'

# Export nvm completion settings for zsh-nvm plugin
# TODO: Just use straight nvm -- plugin isn't really needed
export NVM_COMPLETION=true

# Offload nvm initialization to when its needed
# export NVM_LAZY_LOAD=true
# nvm will be loaded when either nvm/node/npm/a global binary is called
# export NVM_LAZY_LOAD_EXTRA_COMMANDS=('vim' 'nvim')

source ~/.zsh/zsh-nvm/zsh-nvm.plugin.zsh

# TODO: Get this plugin to work
# Tab complete z with fzf fuzzy search
# source ~/.zsh/fzf-fasd/fzf-fasd.plugin.zsh

# export TERM=xterm-256color

# https://github.com/junegunn/fzf/issues/383
# ripgrep respects .gitignore (unless you use --no-ignore-vcs)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --color never'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
