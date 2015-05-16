#!/bin/zsh
if [ $# -eq 1 ]
then
    zshrc=$1
else
    zshrc=~/.zshrc
fi

cat $zshrc
cat $ZSH/oh-my-zsh.shc
for config_file ($ZSH/lib/*.zsh); do
  cat $config_file
done

for plugin ($plugins); do
  if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    cat $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    cat $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done
for config_file ($ZSH_CUSTOM/*.zsh(N)); do
  cat $config_file
done


# Load the theme
if [ "$ZSH_THEME" = "random" ]; then
  themes=($ZSH/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  cat "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]; then
    if [ -f "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme" ]; then
      cat "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
    elif [ -f "$ZSH_CUSTOM/themes/$ZSH_THEME.zsh-theme" ]; then
      cat "$ZSH_CUSTOM/themes/$ZSH_THEME.zsh-theme"
    else
      cat "$ZSH/themes/$ZSH_THEME.zsh-theme"
    fi
  fi
fi
