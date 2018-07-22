<#
Commits to git for you
#>
 
function CreateMessage {
    #[cmdletbinding()]
 
 
    #insert the selected text into a global variable.
    $text = "gitbot: new commit"
    Return $text
}

$msg = CreateMessage

git add .
git commit -m $msg
git push