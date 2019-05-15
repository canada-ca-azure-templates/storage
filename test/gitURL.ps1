$remoteURL = git config --get remote.origin.url

$currentBranch = git rev-parse --abbrev-ref HEAD

$remoteURLnogit = $remoteURL -replace '\.git', ''

$remoteURLRAW = $remoteURLnogit -replace 'github.com', 'raw.githubusercontent.com'

$validateURL = $remoteURLRAW + '/' + $currentBranch + '/template/azuredeploy.json'

Write-Host $validateURL