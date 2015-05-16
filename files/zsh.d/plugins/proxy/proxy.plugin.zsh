set-proxy() {
  echo http=$ZSH_HTTP_PROXY
  echo https=$ZSH_HTTPS_PROXY
  export http_proxy=$ZSH_HTTP_PROXY
  export https_proxy=$ZSH_HTTPS_PROXY
  export HTTP_PROXY=$ZSH_HTTP_PROXY
  export HTTPS_PROXY=$ZSH_HTTPS_PROXY
  export ZSH_ENABLE_PROXY=1
}
unset-proxy(){
    unset http_proxy
    unset https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    export ZSH_ENABLE_PROXY=0
}

if [ $ZSH_ENABLE_PROXY -eq 1 ]; then
    set-proxy
else
    unset-proxy
fi
