
# set editor
set -x EDITOR vim

# prevent Ansible from creating retry files
set -x ANSIBLE_RETRY_FILES_ENABLED 0
set -x ANSIBLE_FILES_SAVE_PATH ~/.ansible/retry

# homebrew
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH

# sublime linter
set PATH /opt/bin $PATH

# prevent RE:illegal byte sequence from sed commands
set -x LC_CTYPE C
set -x LANG C

# virtualfish - remember to update "funced fish_prompt" manually
eval (python -m virtualfish)

# android
set -x ANDROID_HOME "~/Library/Android/sdk"
set -x ANDROID_TOOLS "~/Library/Android/sdk/tools"
set -x ANDROID_PLATFORM_TOOLS "~/Library/Android/sdk/platform-tools"
set -x PATH $ANDROID_HOME $ANDROID_TOOLS $ANDROID_PLATFORM_TOOLS $PATH
