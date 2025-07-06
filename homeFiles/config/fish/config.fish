
if test -z "$XDG_CONFIG_HOME"
  set -gx XDG_CONFIG_HOME "$HOME/.config"
end

if test -z "$XDG_DATA_HOME"
  set -gx XDG_DATA_HOME "$HOME/.local/share"
end

if test -z "$XDG_DATA_DIRS"
  set -gx XDG_DATA_DIRS "$XDG_DATA_HOME:/usr/local/share:/usr/share"
end

if test -z "$XDG_STATE_HOME"
  set -gx XDG_STATE_HOME "$HOME/.local/state"
end

if test -z "$XDG_CACHE_HOME"
  set -gx XDG_CACHE_HOME "$HOME/.cache"
end

if test -z "$XDG_DESKTOP_DIR"
  set -gx XDG_DESKTOP_DIR "$HOME/Desktop"
end

if test -z "$XDG_DOWNLOAD_DIR"
  set -gx XDG_DOWNLOAD_DIR "$HOME/Downloads"
end

if test -z "$XDG_TEMPLATES_DIR"
  set -gx XDG_TEMPLATES_DIR "$HOME/Templates"
end

if test -z "$XDG_PUBLICSHARE_DIR"
  set -gx XDG_PUBLICSHARE_DIR "$HOME/Public"
end

if test -z "$XDG_DOCUMENTS_DIR"
  set -gx XDG_DOCUMENTS_DIR "$HOME/Documents"
end

if test -z "$XDG_MUSIC_DIR"
  set -gx XDG_MUSIC_DIR "$HOME/Music"
end

if test -z "$XDG_PICTURES_DIR"
  set -gx XDG_PICTURES_DIR "$HOME/Pictures"
end

if test -z "$XDG_VIDEOS_DIR"
  set -gx XDG_VIDEOS_DIR "$HOME/Videos"
end

if test -z "$LESSHISTFILE"
  set -gx LESSHISTFILE "/tmp/less-hist"
end

if test -z "$PARALLEL_HOME"
  set -gx PARALLEL_HOME "$XDG_CONFIG_HOME/parallel"
end

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin

if status is-interactive
  set -g fish_greeting
  fish_vi_key_bindings
  if type -q starship
    starship init fish | source
    set -gx STARSHIP_CACHE $XDG_CACHE_HOME/starship
    set -gx STARSHIP_CONFIG $XDG_CONFIG_HOME/starship/starship.toml
  end

  # fzf 
  if type -q fzf
    fzf --fish | source 
  end
end

alias rgc='rebos gen commit'
alias rgb='rebos gen current build'
