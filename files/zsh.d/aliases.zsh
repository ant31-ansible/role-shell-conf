# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List direcory contents

# alias emacs='emacs -r'
# alias e='emacs -r'

# ruby
alias rfind='find . -name "*.rb" | xargs grep -n'


alias rake='bundle exec rake'
# alias rspec="RAILS_ENV='test' bundle exec spec"

alias gpgsym-enc="gpg --symmetric -a"
alias gpgsym-dec="gpg -d"
alias osmtest="RAILS_ENV='test' bundle exec rake spec"
alias ansideploy="cd ~/workspace/arkena/ansible-playbooks && sudo ./MakeLocal && cd -"
alias osmstg="rake tf1:staging heroku:deploy"
alias osmprod="rake tf1:production heroku:deploy"

alias gfeat="git flow feature"
alias grel="git flow release"
