<#
Gitbot
Makes Your Git Stats Great
#>

param([string]$path="C:\")

function GenerateName {
    $filepath = Resolve-Path "words.txt"
    $raw = Get-Content -Path $filepath
    
    $number1 = Get-Random -Maximum 399
    $number2 = Get-Random -Maximum 399

    $random1 = $raw[$number1]
    $random2 = $raw[$number2]

    $name = "$random1-$random2"

    Return $name
}

 
function CreateBranch {
    param([string]$branch)

    git checkout master
    git pull origin master
    git checkout -b $branch
    git push --set-upstream origin $branch
}

function CreateContent {
    param([string]$word)

    $text1 = "const str = 'Hello $word';"
    $text2 = "console.log(str);"
    $text = "$text1 $text2"

    # Create the folder if it doesn't exist
    $folderPath = "js-files"
    if (-not (Test-Path $folderPath -PathType Container)) {
        New-Item -Path $folderPath -ItemType Directory | Out-Null
    }

    # Create the JavaScript file inside the folder
    $filePath = Join-Path $folderPath "$word.js"
    $text | Set-Content $filePath
}


function CreateMessage {
    param([string]$name, $msg)

    $text = "${name}: $msg"

    Return $text
}

function CommitAndPush {
    param([string]$msg)

    git add -A "js-files"  # Add all files in the "js-files" folder
    git commit -m $msg
    git push
}

function MergeBranch {
    param([string]$branch)

    git checkout master
    git pull origin master
    git merge $branch
    git push origin master
}
function DeleteBranch {
    param([string]$branch)
    
    git branch -D $branch
    git push origin --delete $branch
}

Set-Location -Path $path
$branchType = "feature" 
$name = GenerateName
$branch = "$branchType/$name" 
CreateBranch $branch
$commitmsg = GenerateName
$msg = CreateMessage $branch $commitmsg
CreateContent $name
CommitAndPush $msg
MergeBranch $branch
DeleteBranch $branch