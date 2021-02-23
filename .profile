
export PATH="$HOME/bin:$PATH";
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Golang stuff
export GOPATH=$HOME/Projects/Go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

#Python to path
export PATH=/Users/sam/Library/Python/3.7/bin:$PATH

# complete -C /usr/local/bin/terraform terraform
# eval "$(starship init zsh)"



# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,private_env}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sam/Tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sam/Tools/google-cloud-sdk/path.zsh.inc'; fi

# # The next line enables shell command completion for gcloud.
# if [ -f '/Users/sam/Tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sam/Tools/google-cloud-sdk/completion.zsh.inc'; fi

 export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[ -d "$HOME/Library/Android/sdk" ] && ANDROID_SDK=$HOME/Library/Android/sdk || ANDROID_SDK=$HOME/Android/Sdk
echo "export ANDROID_SDK=$ANDROID_SDK" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`

echo "export PATH=$HOME/Library/Android/sdk/platform-tools:\$PATH" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`
