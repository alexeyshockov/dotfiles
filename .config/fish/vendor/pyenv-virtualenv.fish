# See

set -gx PATH '/opt/homebrew/Cellar/pyenv-virtualenv/1.2.4/shims' $PATH;
set -gx PYENV_VIRTUALENV_INIT 1;
#function _pyenv_virtualenv_hook --on-event fish_prompt;
function _pyenv_virtualenv_hook --on-variable PWD --on-variable PYENV_VERSION;
  set -l ret $status
  if [ -n "$VIRTUAL_ENV" ]
    pyenv activate --quiet; or pyenv deactivate --quiet; or true
  else
    pyenv activate --quiet; or true
  end
  return $ret
end
