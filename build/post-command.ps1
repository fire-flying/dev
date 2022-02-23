# pwd

# cpoy artifact
Get-ChildItem "./" -Include *.exe, *.pdb -Recurse | ForEach-Object { 
    if ( $_.FullName.Contains("\vc142.pdb")) {
        Write-Host "pass"
    }
    else {
        Copy-Item -Path $_.FullName -Destination "..\bin\"
    
    }
}

# make archive
Compress-Archive -Update "..\bin\" "..\file.zip"