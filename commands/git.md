# Git commands
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
git remote set-url  https://[USERNAME]@github.com/usernameOrOrganisation/repository.git
```
`USERNAME` - this is optional, it allows you to tie the repository to a certain user.
