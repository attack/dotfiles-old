if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export RBXOPT=-X19

alias r19='RBENV_VERSION=1.9.3-p484 '
alias r20='RBENV_VERSION=2.0.0-p353 '
alias r21='RBENV_VERSION=2.1.0 '
# alias rbx='BUNDLE_GEMFILE=$PWD/gemfiles/Gemfile.travis RBENV_VERSION=rbx-2.2.1 '

alias rspec18='RBENV_VERSION=system bundle exec rspec spec'
alias rspec19='RBENV_VERSION=1.9.3-p484 bundle exec rspec spec'
alias rspec20='RBENV_VERSION=2.0.0-p353 bundle exec rspec spec'
alias rspec21='RBENV_VERSION=2.1.0 bundle exec rspec spec'
# alias rspecrbx='BUNDLE_GEMFILE=$PWD/gemfiles/Gemfile.travis RBENV_VERSION=rbx-2.2.1 bundle exec rspec spec'

# alias pelusa='BUNDLE_GEMFILE=$PWD/gemfiles/Gemfile.travis RBENV_VERSION=rbx-2.2.1 bundle exec pelusa'
