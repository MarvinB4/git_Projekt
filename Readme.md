# GITIGIT

## Infomaterial 

[Hier] https://github.com/tomschiffmann-teaching/02_git_ci_cd

## Repo erstellen und auch remote verknüpfen 

### Vorraussetzungen

Auf Github.com Account sollte bereits ein ssh Key hinterlegt sein (Falls nicht klicke [Hier](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))

Die globalen Variablen sind auf dem System hinterlegt

    $ git config --global user.name "John Doe"
    $ git config --global user.email johndoe@example.com

git init: Lokal das Repository zu initialisiern/VCS in der Projektmappe hinterlegen
git add .: Fügt alle Dateien zu der gestageten area (alle Dateien die an einen Commit angehängt werden sollen)
git commit -m "initial commit"(Für genaue Commit message findest du mehr [HIER](https://www.conventionalcommits.org/en/v1.0.0/))
.gitignore anlegen um kontinuirlich Dateien zu verweisen die nicht getracked werden sollen von git

### Verknüpfung auf ein remote repository hinbekomme

Remote repository erstellen auf dem Github.com Account
Anweisungen auf neuem Repository folgen (...push existung repository)
Bei den Befehlen beachten, dass ihr SSH ausgewählt habt, dann sollte die origin url mit git anfangen
git remote add origin git@github.com:tomschiffmann-teaching/02_git_ci_cd.git
git branch -M main
git push -u origin main
git pull um Commits vom aktuellen Branch zu synchen




Comit