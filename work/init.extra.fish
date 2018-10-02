# Short path
set -xg theme_short_path yes

# bin dir
set -xg PATH $HOME/.dotfiles/work/.bin $PATH
set -xg PATH $HOME/.dotfiles/.bin $PATH

# Use new gnu utils
set -xg PATH /usr/local/opt/findutils/libexec/gnubin $PATH

# Use python installs (pipenv etc)
set -xg PATH $HOME/Library/Python/3.6/bin $PATH

# GO bin dir
set -xg PATH $HOME/go/bin $PATH

# ESP32
function get_esp32
    set -xg PATH $HOME/esp/xtensa-esp32-elf/bin $PATH

    set -xg IDF_PATH $HOME/esp/esp-idf
    set -xg PATH $IDF_PATH/components/esptool_py/esptool $PATH
    set -xg PATH $IDF_PATH/components/espcoredump $PATH
    set -xg PATH $IDF_PATH/components/partition_table $PATH
end

set -xg LANG sv_SE.UTF-8
set -xg LC_ALL sv_SE.UTF-8

set -xg LESSOPEN "| src-hilite-lesspipe.sh %s"
set -xg LESS " -R "

set -xg MINIUM_DEVELOPER_BUILD 1

function kb
    echo Ctrl-f\t\tFind a file.
    echo Ctrl-r\t\tSearch through command history.
    echo Alt-o\t\tcd into sub-directories \(recursively searched\).
    echo Alt-Shift-o\tcd into sub-directories, including hidden ones.
    echo Ctrl-o\t\tOpen a file/dir using default editor \($EDITOR\)
    echo Ctrl-g\t\tOpen a file/dir using xdg-open or open command
end