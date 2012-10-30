# Language settings
#
export LANG=ja_JP.UTF-8
case ${UID} in
0)
    LANG=C
    ;;
esac

## Keybind configuration
# Vim-like keybinds
bindkey -v

bindkey "^[[1~" beginning-of-line # Home gets to line head
bindkey "^[[4~" end-of-line # End gets to line end
bindkey "^[[3~" delete-char # Del

## Prediction configuration
#
#autoload predict-on
#predict-on

