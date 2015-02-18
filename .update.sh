#! /bin/bash

set -e

DATE=$(date +%Y%m%d-%H%M%S)

export GIT_SSH=/tmp/getting-started-ssh
# Tell ssh to use the given identity
cat > $GIT_SSH <<'EOF'
#!/bin/sh
exec ssh -i /home/timvideos/.ssh/timvideos-website "$@"
EOF
chmod a+x $GIT_SSH

cd /tmp

if [ -d getting-started ]; then
  rm -rf getting-started
fi

git clone git+ssh://git@github.com/timvideos/getting-started.git

(
  cd getting-started
  echo $DATE > .keepalive
  git add .keepalive
  git commit -m "Daily commit on $DATE to keep getting-started at top of github."
  git push origin master:keepalive --force
)
