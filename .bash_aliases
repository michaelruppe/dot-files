# Bash shell customisations and aliases
# Michael Ruppe
#
#
# To use these aliases you can:
# 1. Paste its contents in your .bashrc file OR
# 2. Copy this file to your user-home-directory and ensure the follwing lines are included in your .bashrc file
#     if [ -f ~/.bash_aliases ]; then
#         . ~/.bash_aliases
#     fi



# Make a directory and cd into it
mkcd(){ NAME=$1; mkdir -p "$NAME"; cd "$NAME"; }

# Go up directory levels. Execute: "up X" to cd up X directories
upup(){ DEEP=$1; for i in $(seq 1 ${DEEP:-"1"}); do cd ../; done; }
alias up='upup'


# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"