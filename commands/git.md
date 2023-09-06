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
