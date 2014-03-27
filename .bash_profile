# vim:ft=sh:

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

for file in ~/.shrc/*.sh; do
  source "$file"
done

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
