# MacOS Keychain for SSH keys, replaced by 1Password (below)
# See https://www.technomancer.com/archives/464
# See https://blog.1password.com/1password-ssh-agent/ & https://developer.1password.com/docs/ssh/get-started
#if ! ssh-add -l > /dev/null
#    ssh-add --apple-use-keychain ~/.ssh/id_rsa
#end

set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
