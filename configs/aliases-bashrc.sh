
if [ -f ~/.aliases_common ]; then
  . ~/.aliases_common
fi

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

########

# Set a shell option but don't fail if it doesn't exist!
safe_set() {
  shopt -s "$1" >/dev/null 2>&1 || true;
}

# Configure the history to make it large and support multi-line commands.
safe_set histappend                  # Don't overwrite the history file, append.
safe_set cmdhist                     # Multi-line commands are one entry only.


# Set some options to make working with folders a little easier. Note that we
# send all output to '/dev/null' as startup files should not write to the
# terminal and older shells might not have these options.
safe_set autocd         # Enter a folder name to 'cd' to it.
safe_set cdspell        # Fix minor spelling issues with 'cd'.
safe_set dirspell       # Fix minor spelling issues for commands.
safe_set cdable_vars    # Allow 'cd varname' to switch directory.

