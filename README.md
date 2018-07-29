# Gitbot

A git bot for Windows. Visit https://medium.com/@djpjgj/make-your-github-stats-great-again-a830cb6e3428 for background info.

## Prerequisites

You need to have **Git** installed, on **Windows**.

## Usage

### Set-up and execution

* Copy the script file ( [gitbot.ps1](https://github.com/perjo927/gitbot/blob/master/gitbot.ps1)) and the dictionary - [words.txt](https://github.com/perjo927/gitbot/blob/master/words.txt) - to a directory

* Create a repo
    > git clone <*name of repo*>

    > cd <*name of repo*>

* Store your Git credentials
   > git config credential.helper store

* Run the script
    > ../gitbot.ps1 -path <*path to repo*>

### Scheduling

* Modify the file `schedule_task.ps1` to your needs and execute it with the argument `-path`:
    > .\schedule_task.ps1 -path <*path to gitbot.ps1*>
