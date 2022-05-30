# Git Flow

# Git: Pushing Code

git clone git@github.com:${USERNAME}/Scripts

cd Scripts/

git status

touch first second

git status

git add first 

# undo file add
git restore --staged first

git add second

git commit -m "Commiting the \"second\" file."

git log

# add first file
git add first
git commit -m "Committing the \"first\" file."

# but, wait, maybe we don't want that file... let's revert back to previous commit
git reset HEAD~1

# oops, we forgot to use our own branch
git checkout -b ${USERNAME}/newfeature
git branch

# add back first file
git add first
git commit -m "Committing the \"first\" file."

# git stash it
git stash
git stash list
git stash apply
git stash pop

# change back to main branch
git checkout -b main
git merge ${USERNAME}/newfeature
git checkout -b main

# as there are 2 recent commits, let's rewrite the commit message instead
git reset --soft HEAD~2
git commit -m "Adding first and second"

# git push
git push --set-upstream origin main

# move master to main: point head to main branch
# https://stevenmortimer.com/5-steps-to-change-github-default-branch-from-master-to-main/
git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main
git push origin --delete master

# remove extra branch
git branch -d main2
git push origin --delete main2


# a lot of changes example
git checkout -b alotofchanges
touch a b c d e f g
git add .
git commit -m "alotofchanges"
git checkout main
echo "leonardo dicaprio" > a
git add .
git commit -m "add a"
git rebase -i
git merge alotofchanges
git rebase -i
# git rebase --abort 
# and update commit message
# and merge commit messages using "squash"
git push -u origin



# pull remote
git branch -r
git fetch
git checkout -b origin/main
git pull origin main3
git log
git push -u origin origin/main3
git push origin --delete main

# change the actual branch on github
git fetch
git checkout main
git pull origin main
git branch -r
git push -u origin
gb
ls
rm first second b c d e f g
gs
git add . 
git commit -m "Remove all test files"
git push -u origin
gs

# force fix issue on remote origin
git rebase -i HEAD~2
git push --force origin fix
