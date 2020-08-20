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

# Fish-like auto suggestions
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fish-like syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://github.com/romkatv/powerlevel10k
# source ~/.zsh/powerlevel10k/powerlevel9k.zsh-theme
setopt prompt_subst
source ~/.zsh/agnoster-patched/agnoster.zsh-theme

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
DEFAULT_USER="vedantroy"
