$BucketName = 'ansible-2374892243234'
try {
    New-S3Bucket -BucketName $BucketName -ErrorAction Stop
}
catch {
    if ($PSItem.Exception.Message -match 'succeeded and you already own it') {
        Write-Host -ForegroundColor Green -Object 'Bucket already exists'
    }
}

Write-S3Object -BucketName $BucketName -File $PSScriptRoot/01-ubuntu.yml
Write-Host -ForegroundColor Green -Object 'Wrote Ansible script to S3 Bucket'