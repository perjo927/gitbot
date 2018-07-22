<#
Commits to git for you
#>
 
function CreateMessage {
    $text = "gitbot: new commit"
    Return $text
}

function Commit {
    param([string]$msg)

    git add .
    git commit -m $msg
    git push
}

$msg = CreateMessage
Commit $msg
