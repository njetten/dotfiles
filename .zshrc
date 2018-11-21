## Completion ##
# List choices on ambiguous completion
setopt AUTO_LIST 
# Use menu completion after second consecutive request for completion
setopt AUTO_MENU 
# If word contains glob, dont insert all but prompt user
setopt GLOB_COMPLETE
# Anything after command of form thing=expr have filename expansion
setopt MAGIC_EQUAL_SUBST
# Append trailing `/` to directory names from globbing
setopt MARK_DIRS
# Show completion file types by a mark
setopt LIST_TYPES

## History ##
# Append history from all sessions to history file
setopt APPEND_HISTORY
# Remove older entries if a duplicate command is added
setopt HIST_IGNORE_ALL_DUPS
# As well on save
setopt HIST_SAVE_NO_DUPS
# Remove superfluous blanks from commands
setopt HIST_REDUCE_BLANKS
# Dont execute history expanded lines directly
setopt HIST_VERIFY

## ZLE ##
setopt NO_BEEP
setopt VI

HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
