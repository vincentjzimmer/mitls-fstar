#/bin/bash 
git checkout bot_hints
make -C src/tls all-ver OTHERFLAGS=--record_hints
git commit -am "Bot regenerates hints" || git fetch && git rebase && git commit -am "Bot regenerates hints with rebase" || git reset --hard 
git push 
git merge 
