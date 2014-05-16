# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
eval `keychain --eval id_rsa`
source /usr/bin/virtualenvwrapper.sh
