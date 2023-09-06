# Git commands
## Configuration
### List all the configuration settings
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
### See local branches
```
git branch
```
### See remote branches
```
git branch -r
```
### See all local & remote branches
```
git branch -a
```
### Set local branch to origin as upstream
```
git push -u origin <branch>
```
`-u` flag is short for --set-upstream
## Staging
### Remove all untracked files (forced)
```
git clean -f
```
