#! /bin/bash

DATE=$(date +%Y%m%d-%H%M%S)
SSH_WRAPPER=/tmp/getting-started/ssh

cd /tmp

if [ -d getting-started ]; then
  rm -rf getting-started
fi

git clone git+ssh://github.com/timvideos/getting-started.git

# Tell ssh to use the given identity
cat > $SSH_WRAPPER <<'EOF'
#!/bin/sh
exec ssh -i /home/timvideos/.ssh/timvideos-website "$@"
EOF
chmod a+x $SSH_WRAPPER
export GIT_SSH=$SSH_WRAPPER

(
  cd getting-started
  echo $DATE > .keepalive
  git add .keepalive
  git commit -m "Daily commit on $DATE to keep getting-started at top of github."
  git push master:keepalive --force
)
