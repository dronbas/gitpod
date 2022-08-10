git config --global user.email $GIT_AUTHOR_EMAIL
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.br branch
git config --global alias.ci 'commit -m'
git config --global alias.brn '!git rev-parse --abbrev-ref HEAD'
git config --global alias.cln '!f() { git br | grep -v dev | xargs git branch -D;}; f'
git config --global alias.pub '!git push -u origin $(git brn)'
git config --global alias.brnextracted '!f() { [[ $(git brn) =~ ^(release/|feature/|hotfix/|bugfix/)?([A-Z]+-[0-9]+).*$ ]] && echo ${BASH_REMATCH[2]}; }; f'
git config --global alias.cil '!f() { TICKET_NAME=$(git brnextracted) && git commit -m "$TICKET_NAME $@"; }; f'
