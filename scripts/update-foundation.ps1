Get-ChildItem "." -Recurse -Filter *Vagrantfile | % {
  (Get-Content $_.FullName) `
    | % { $_ -replace [regex]::Escape("hashicorp/precise64"), "cbednarski/ubuntu-1404" } `
    | Set-Content $_.FullName
}
