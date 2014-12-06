# .bash_profile
PATH=$PATH:$HOME/bin
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export LSCOLORS=gxfxcxdxbxegedabagacad

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
 
# User specific environment and startup programs
 
# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
