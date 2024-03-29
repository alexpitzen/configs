export EDITOR=nvim

#set -o vi

# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH-SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

alias ls="ls --color"
alias grep="grep --color"

# so that we can ctrl+s without the terminal freezing
stty -ixon

# export LS_COLORS=$LS_COLORS:'di=01;36:'

alias gs="git status"
alias gp="git remote prune origin"

alias lint="pylint --rcfile=.pylintrc --reports=n --output-format=colorized"

#alias gr="git log --graph --full-history --color -i --pretty=tformat:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m\""
alias gr="TZ=UTC git log --graph --full-history --date=format:'%Y_%m_%d_%H%M%S' --color -i --pretty=tformat:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x20%x1b[34m(%ad)%x1b[0m\""
alias gra="gr --all"
alias grh="gr | head"
alias grah="gra | head"

alias dirs="dirs -v"
# cd ~1

alias remote="git remote -v | head -1 |tr '\t' ' ' | cut -d' ' -f2"

alias fixme="stty sane"

alias fixjedi="rm .env/lib/python*/site-packages/pylint/test/functional/invalid_encoding_py27*"

# search for commits w/ filename, grep entire codeset of those commits for the regex
# git rev-list --all -- path/to/filename | xargs git grep stringtosearch

function fif2() {
    find . -path ./.env -prune -o -exec grep --color -i "$*" {} + 2>/dev/null
}

alias gut=git
alias fir=git
alias fit=git
alias gitt=git
alias guit=git
alias gir=git
alias fur=git
alias got=git
alias giut=git
alias goit=git
alias gitr=git
alias girt=git
alias ggit=git
alias giit=git
alias gig=git
alias gigt=git
alias gti=git
alias igt=git

alias addhour='sudo date -s "1 hour"'
alias subhour='sudo date -s "1 hour ago"'
alias timesync='sudo timedatectl set-ntp'

# Make sure both are on and ~75%(?)
# amixer get Mic
# amixer get Capture

# amixer set Mic toggle
# amixer set Mic 5%+
# amixer set Capture 5%+    # ?

function fixmic() {
    amixer set Mic 100%
    amixer set Capture 85%
}


# -t is duration, alternatively use -to for timestamp
# ffmpeg -ss 00:00:09 -i Replay_2022-02-25_01-27-51.mp4 -t 00:00:11 -vcodec copy -acodec copy suisave.mp4

alias gsudo='sudo env XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR'

alias powertune='sudo powertop --auto-tune'

# nmcli c add type wifi ssid "asdf" con-name "fdsa" 802-11-wireless-security.key-mgmt wpa-psk 802-11-wireless-security.psk "asdfasdfasdf"
# nmcli c up fdsa

if [ -f ~/.work_aliases ]; then
    . ~/.work_aliases
fi

alias league='sudo sysctl -w abi.vsyscall32=0'

alias temp='watch -n 5 "sensors | grep '"'"'fan\|Core'"'"'"'

alias heh='echo -n 𓁹‿𓁹 | xclip -selection c'
alias shrug='echo -n "¯\\_(ツ)_/¯" | xclip -selection c'

alias randomizer='/usr/lib/jvm/java-8-openjdk-amd64/bin/java -jar ~/Games/UPRandomizer/randomizer.jar'
alias java8='/usr/lib/jvm/java-8-openjdk-amd64/bin/java'
