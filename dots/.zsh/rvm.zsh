# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
 source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
 source "/usr/local/rvm/scripts/rvm"
fi

`which rvm > /dev/null`
rvm_missing=$?
if [ "$rvm_missing" = 0 ]; then
  rvm --default use 2.0.0-p0 &> /dev/null
fi

