# Git commands
## Cloning
#### Cloning a repository
```
git clone REPOSITORY_URL [DIR_NAME]
```
`REPOSITORY_URL`: The URL of the Git repository you want to clone (can be HTTPS or SSH URLs).  
`DIR_NAME` (optional): Name of the directory where the repository will be cloned. If you don't specify a directory name, Git will use the name of the repository by default.
#### Cloning a specific branch
```
git clone -b BRANCH_NAME REPOSITORY_URL
```
#### Cloning as specific user
For authentication purposes (amongst others) a repository can be cloned with a specific user.
##### HTTPS
```
git clone https://username@github.com/yourusername/myrepo.git
```
##### SSH
```
git clone git@github.com:yourusername/myrepo.git
```

## Configuration
#### List all the configuration settings
```
git config --list
```
### Set configuration
#### Set the user name
```
git config user.name=INSERT_NAME_HERE
```
#### Set the user email
```
git config user.email=INSERT_EMAIL_HERE
```


## Branches
#### See local branches
```
git branch
```
#### See remote branches
```
git branch -r
```
#### See all local & remote branches
```
git branch -a
```
#### Extra git branch flags
`-D` - this flag is equivalent to `-d` `--force`
#### Set local branch to origin as upstream
```
git push -u origin <branch>
```
`-u` flag is short for --set-upstream
### Deletion
#### Deleting a local branch
```
git branch -d branch-name
```
Note: You cannot delete a branch if it is currently checked out (the active branch).
      If this is the case, switch to another branch, then delete the intended branch.
#### Deleting a remote branch
```
git push origin -d branch-name
```
To verify that the remote branch has been deleted, you can run [`git branch -a`](https://github.com/alexxmatei/personal/blob/main/commands/git.md#see-all-local--remote-branches).


## Staging
#### Remove all untracked files (forced)
```
git clean -f
```


## Commit
#### Update the message of the previous commit
```
git commit --amend -m "an updated commit message"
```
#### Add additional staged files without changing the commit message
```
git commit --amend --no-edit
```
Where:
`--no-edit` flag allows amendments to commit without changing its commit message.
`--ammend` flag allows an edit to the previous commit, be it changing the message with an additional `-m`, adding additional stage files, or both.


## Remote
#### Check remote repositories URLs
```
git remote -v
```
`-v` flag is short for verbose. This format will include the name and URL of each remote repository.
#### Change remote repository URL
Changes the remote repository URL associated with the local git repository.
```
git remote set-url origin https://[USERNAME]@github.com/usernameOrOrganisation/repository.git
```
`USERNAME` - this is optional, it allows you to tie the repository to a certain user.
