
#load bashrc if exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# enable bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

# prevent Ansible from creating retry files
export ANSIBLE_RETRY_FILES_ENABLED=0
export ANSIBLE_FILES_SAVE_PATH=~/.ansible/retry

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# prevent RE:illegal byte sequence from sed commands
export LC_CTYPE=C
export LANG=C

# for SublimeLinter
case $- in
   *i*) source ~/.bashrc
esac

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
    export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
    source /usr/local/bin/virtualenvwrapper.sh
fi


# android development
export ANDROID_HOME="~/Library/Android/sdk"
export ANDROID_TOOLS="~/Library/Android/sdk/tools"
export ANDROID_PLATFORM_TOOLS="~/Library/Android/sdk/platform-tools"
PATH=$ANDROID_HOME:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$PATH
