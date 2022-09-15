set -U FZF_LEGACY_KEYBINDINGS 0

# golang
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# anyenv settings
set -x PATH $HOME/.anyenv/bin $PATH
anyenv init - fish | source

set -x TMUX_TMPDIR /tmp

set -x LDFLAGS -L/usr/local/opt/openssl/lib
set -x CPPFLAGS -I/usr/local/opt/openssl/include


# spacefish settings [deprecated: -> starship]
set -x SPACEFISH_TIME_SHOW true
set -x SPACEFISH_DATE_SHOW true
set -x SPACEFISH_EXIT_CODE_SHOW true
set -x SPACEFISH_VI_MODE_INSERT I
set -x SPACEFISH_VI_MODE_NORMAL N
set -x SPACEFISH_VI_MODE_VISUAL V
set -x SPACEFISH_VI_MODE_REPLACE_ONE R
set -x SPACEFISH_VI_MODE_COLOR green

# starship
starship init fish | source


## custom
