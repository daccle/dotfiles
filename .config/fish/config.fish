test -f ~/.aliases; and . ~/.aliases
test -f ~/.aliases.local; and . ~/.aliases.local

# set env vars
cat ~/.env ~/.env.local 2> /dev/null | while read N V
  set -xg $N (eval echo $V)
end

# append to path
cat ~/.paths ~/.paths.local 2> /dev/null | while read P
  set -xg PATH $PATH (eval echo $P)
end

test -f ~/.config/fish/config.local.fish; and . ~/.config/fish/config.local.fish

fish_vi_key_bindings

