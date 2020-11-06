# for convenient purpose
alias open="xdg-open"
alias jpt_lab="jupyter lab"
alias pwdcp="pwd | pbcopy"
alias ctf="cd ~/Desktop/programming/ctf"
alias searchKokushi="cd /Users/Toshiaki/Desktop/medicine/prj_kokushi/src && python kokushiSearch.py"
alias o.="open ."
alias snippets="cd ~/.local/share/jupyter/snippets"
alias cdoutyou="cd /home/toshiaki/Desktop/prj_doutyou/prj_D_analysis"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias c.="cd .."
alias c..="cd ../.."
alias t1="tree -L 1"
alias t2="tree -L 2"
alias t3="tree -L 3"

# git/github alias
alias git_push_easy="bash /Users/Toshiaki/Desktop/programming/bash/gitPush.sh"
alias gCM="git checkout main"
alias gC="git checkout"

alias gPull="git pull origin"
alias gPullM="git pull origin master"
alias gPush="git push origin"
alias gPushM="git push origin master"

alias gB="git branch"
alias gS="git status"

alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lg3="git log --graph --pretty=oneline --abbrev-commit "

alias g_ignore="cat ~/Desktop/programming/python/snippets/src/gitignore.py > ./.gitignore"

function git_merge_one_file(){
    if [ $# -ne 4 ]; then 
        echo -e "\nUsage : git_merge_one_file <target-file> <current-branch> <base-branch> <other-branch>"
        echo "    <target-file> should include './' for a prefix" 
        echo "    if you want to select a file in the currenct directry."
    else
        file_name=$1
        ours=$2
        base=$3
        theirs=$4
        git show ${ours}:${file_name} > ${file_name}.ours
        git show ${base}:${file_name} > ${file_name}.base
        git show ${theirs}:${file_name} > ${file_name}.theirs
        git merge-file -p ${file_name}.ours ${file_name}.base ${file_name}.theirs > ${file_name}
        rm ${file_name}.ours ${file_name}.base ${file_name}.theirs
    fi 
}

function mdview() {
markdown $1 | lynx -stdin
}

# for specific path 
alias 3CSRTT="cd /home/toshiaki/Desktop/study/3CSRTT/prj_SD_add_202006"

# pyqt5 designer
alias craku="cd /home/toshiaki/Desktop/prj_doutyou/rakutto_collect_project/"
alias crakuInput="cd /home/toshiaki/Desktop/rakutto_collect_project/prj_input/src_input_gui/"
alias cDAna="cd /home/toshiaki/Desktop/prj_doutyou/prj_D_analysis/"

function pyqtConv(){
python -m PyQt5.uic.pyuic -x $1 -o $2
}

# alias for pycharm 
alias pycharm="sh /home/toshiaki/pycharm-community-2020.1.3/bin/pycharm.sh"


# make alias for my cipher
Path="/home/toshiaki/Desktop/programming/python/binary"
file="fibonaCipher.py"
alias encryption="python $Path/$file -e"
alias decryption="python $Path/$file -d"

# list size of each file (total) 
alias lsize='for f in * ; do du -hs "$f" ; done'

# for dictionary 
function dict() {
    grep $1 ~/Desktop/programming/linux/gene-utf8.txt -A 1 $2 $3 -wi --color
}

# for word search. 
function med_grep(){
    echo "-------------------------------"
    C_op=${2:--C10}
    grep $1 /home/toshiaki/Desktop/medicine/words_connections.txt $C_op -i
}

alias med_edit="gedit /home/toshiaki/Desktop/medicine/words_connections.txt"

# for smartgit 
alias smartgit="bash /home/toshiaki/custom_items/smartgit/bin/smartgit.sh"
