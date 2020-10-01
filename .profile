
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


# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,private_env}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
