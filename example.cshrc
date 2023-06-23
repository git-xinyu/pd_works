#!/bin/csh
#---------------------------------------------------#
# Filename: example.cshrc
# Author:   xinyu
# Date:     2023-06-23
# Description: this is an example for cshrc setting.
# Including:                                        
#  1. environment variable                          
#  2. source other config                           
#  3. alias                                                                             
#  4. shell initialization                      
#---------------------------------------------------# 

#--- 1. environment variable ---#
setenv PATH "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#setenv PATH "$PATH:/usr/newpath"
setenv EDITOR "vim"

#--- 2. source other config ---#
# use -e to check if file exists
if (-e ~/other.cshrc) then
  source ~/other.cshrc
endif

#--- 3. alias ---#
alias , 'cd -'
alias . 'cd ..'
alias .. 'cd ../..'
alias ... 'cd ../../..'
alias cp 'cp -i'
alias rm 'rm -i'
alias l 'ls -lrthF'
alias ll 'ls -alrthF'
alias la 'ls -alhF'
alias cd 'cd \!* ; l -C'
alias g 'gvim'
alias gv 'gview'

alias gc 'gvim ~/.cshrc'
alias vv 'gvim ~/.vimrc'
alias sc 'source ~/.cshrc'

alias mkd "mkdir -p \!:1 ; cd \!:1"

#--- 5. shell initialization ---#
set prompt="[`date '+%H:%M'`] @%m: %~ > "
set history=1000
set autolist
set complete=enhance
set beep
set nobeep
set filec
set filedots
set mail=/var/mail/$USER
set noclobber
set nonomatch
set notify
set savehist=(1000 merge)
set cdpath=(:~:/usr/local:/usr/local/src:/usr/local/include:/usr:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin)

