#pyenv install 3.7.10
#echo pyenv versions
#pyenv global 3.7.10
#echo pyenv versions
#sudo pip3 install virtualenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
