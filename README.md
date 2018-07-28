# Gitbot
A git bot for Windows.

## Prerequisites
You need to have **Git** installed, on **Windows**.

## Usage

### Set-up and execution

* Store your Git credentials
> git config credential.helper store

* Copy the script file ( [gitbot.ps1](https://github.com/perjo927/gitbot/blob/master/gitbot.ps1)) to a directory

* Create a repo
    > git clone <*name of repo*>

    > cd <*name of repo*>

* Run `../gitbot.ps1`

### Scheduling

* Modify the file `schedule_task.ps1` to your needs and execute it with the argument `-path`:
    > .\schedule_task.ps1 -path <*C:\path to gitbot.ps1*>