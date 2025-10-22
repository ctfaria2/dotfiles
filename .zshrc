# Path to your oh-my-zsh installation.
export ZSH="$HOME/development/dotfiles/.oh-my-zsh"

# Oh My Zsh Theme
ZSH_THEME="frisk"

# Oh My Zsh plugins
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

# Organized Configuration
source ~/.aliases
source ~/.exports

eval "$(/opt/homebrew/bin/brew shellenv)"


# bit
export PATH="/Users/cfaria/bin:$PATH"
# bit end

export N_PREFIX="$HOME/n"; [[ :$PATH: == *"$N_PREFIX/bin"* ]] || PATH="$N_PREFIX/bin:$PATH"  # Added by n-install (see http://git.io/n-install-repo).# infrastructure-utils
setopt prompt_subst
export PS1='$AWS_PROMPT'$PS1

# pnpm
export PNPM_HOME="/Users/cfaria/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
