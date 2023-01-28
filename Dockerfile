FROM someblackmagic/gitlab-mirror-and-ci-action:master

LABEL "com.github.actions.name"="Mirror to GitLab and run GitLab CI"
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab, trigger GitLab CI and post results back to GitHub"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/SomeBlackMagic/gitlab-mirror-and-ci-action"
LABEL "homepage"="https://github.com/SomeBlackMagic/gitlab-mirror-and-ci-action"
LABEL "maintainer"="Andru Cherny"


COPY cmd.sh /cmd.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/cmd.sh"]
