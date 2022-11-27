
UPSTREAM="https://github.com/fuserh/torproject.git"
BOT_USER="github-actions[bot]"
BOT_EMAIL="41898282+github-actions[bot]@users.noreply.github.com"
CONFIG_PATH="config"

git config user.name "$BOT_USER"
git config user.email "$BOT_EMAIL"
git clone https://github.com/fuserh/torproject
ls
git add .
git remote add origin https://github.com/gffice/torpage.git
git branch -M master
git push -u origin master

