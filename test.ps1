# Class to house all of our powershell scripts to reuse
class lanlogicScritps {
    [string] firstFunction($message){
        return Write-Host $message;
    }
}

$lanlogic = [lanlogicScritps]::new()
# $lanlogic.firstFunction('Hello World!')
