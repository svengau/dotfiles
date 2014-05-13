# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Loading scripts
if [ -f ~/.zsh_scripts ]; then
    . ~/.zsh_scripts
fi

# Loading aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell" # sorin

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git symfony2)
plugins=(git symfony2 bower brew dircycle encode64 gem git-fast git-extras gradle mvn node npm osx rails redis-cli ruby rvm sbt scala sublime vagrant web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/sbin:/opt/local/lib/mysql55/bin:/workspace/playadz/admin/mac/scripts"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# SSH shortcuts
ssh_apache()     { ssh -p 6666 www-data@ovhapache.playadz.com; }
ssh_db()         { ssh -p 6666 www-data@ovhdb.playadz.com; }
ssh_svn()        { ssh -p 6666 www-data@svn.playadz.com; }
ssh_ac_db1()     { ssh -p 6666 www-data@db1.alertes-citoyens.fr; }
ssh_ac_www1()    { ssh -p 6666 www-data@www1.alertes-citoyens.fr; }
ssh_ac_www2()    { ssh -p 6666 www-data@www2.alertes-citoyens.fr; }

ssh_bisquit()    { ssh customer@78.40.124.67; }
ssh_dugas()      { ssh vincidug@ssh.cluster005.ovh.net; }

svn_fix_delete()       { svn st | grep '^!' | awk '{print $2}' | xargs svn delete --force; }
svn_fix_add()       { svn st | grep '^?' | awk '{print $2}' | xargs svn add; }

alias ls='ls -G'
alias l='ls -lA'
alias ll='ls -alhG'
alias showHiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder'
alias hideHiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'
alias showLibraryFolder='sudo chflags nohidden ~/Library'
alias updateLocateDb='sudo /usr/libexec/locate.updatedb'


MYSQL_HOME=/opt/local/lib/mysql5
alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'

restart_apache() { sudo killall httpd; sudo apachectl -k restart; }
restart_MYSQL() { sudo killall httpd; sudo /Library/StartupItems/MySQL/MySQL start; }

# Projects shortcuts
cdi()       { cd /workspace/playadz/iphone/$1; pwd; }
cdw()       { cd /workspace/playadz/website/$1; pwd; }
cdw2()      { cd /workspace/playadz/website2/$1; pwd; }
cda()		{ cd /workspace/playadz/admin; pwd; }
cdm()		{ cd /workspace/playadz/admin/mac/; pwd; }
cds()		{ cd /workspace/playadz/admin/servers/; pwd; }
cdb()		{ cd /workspace/playadz/website2/_bundles/; pwd; }
pstorms()	{ pstorm /workspace/playadz/admin/servers/; }
pstormm()	{ pstorm /workspace/playadz/admin/mac/; }
pstormw()	{ pstorm /workspace/playadz/website/$1; }
pstormw2()	{ pstorm /workspace/playadz/website2/$1; }

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
