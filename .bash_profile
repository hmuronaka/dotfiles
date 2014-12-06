# .bash_profile
PATH=$PATH:$HOME/bin
export PATH
export LSCOLORS=gxfxcxdxbxegedabagacad

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,rubyrc}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
