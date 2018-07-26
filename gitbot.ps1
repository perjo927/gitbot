<#
Gitbot
Makes Your Git Stats Great
#>

function CreateBranchName {
    $name = "hello-world"

    Return $name
}

 
function CreateBranch {
    param([string]$branch)

    git pull
    git checkout -b $branch
    git push --set-upstream origin $branch
}

function CreateContent {
    param([string]$branch)

    ### add file and write to it
}

function MergeBranch {
    param([string]$branch)

    git checkout master
    git pull origin master
    git merge $branch
    git push origin master
}


function CreateMessage {
    param([string]$type, [string]$name)

    $text = "$type($name): test"

    Return $text
}

function CommitAndPush {
    param([string]$msg)

    git add .
    git commit -m $msg
    git push
}

$branchType = "feature" 
$branchName = CreateBranchName
$branch = "$branchType/$branchName" 
CreateBranch $branch
$msg = CreateMessage $branchType, $branchName
CommitAndPush $msg
MergeBranch