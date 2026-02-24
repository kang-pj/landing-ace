$username = "shesy11"
$password = "Rkdwnl24!!"
$ftpServer = "ftp://shesy11.cafe24.com"

$global:totalSize = 0
$global:fileCount = 0
$global:dirCount = 0

function Get-FtpDirectoryTree {
    param(
        [string]$path,
        [int]$indent = 0
    )
    
    $ftpRequest = [System.Net.FtpWebRequest]::Create("$ftpServer$path")
    $ftpRequest.Credentials = New-Object System.Net.NetworkCredential($username, $password)
    $ftpRequest.Method = [System.Net.WebRequestMethods+Ftp]::ListDirectoryDetails
    
    try {
        $response = $ftpRequest.GetResponse()
        $reader = New-Object System.IO.StreamReader($response.GetResponseStream())
        $content = $reader.ReadToEnd()
        $reader.Close()
        $response.Close()
        
        $lines = $content -split "`n" | Where-Object { $_ -match '\S' }
        
        foreach ($line in $lines) {
            $parts = $line -split '\s+', 9
            $name = $parts[8]
            
            if ($name -eq '.' -or $name -eq '..' -or $name -match '^\.' -or $name -eq '') { continue }
            
            $indentStr = "  " * $indent
            
            if ($line -match '^d') {
                # 디렉토리
                $global:dirCount++
                Write-Host "$indentStr[DIR] $name"
                Get-FtpDirectoryTree "$path$name/" ($indent + 1)
            }
            elseif ($line -match '^-') {
                # 파일
                $size = [long]$parts[4]
                $global:totalSize += $size
                $global:fileCount++
                
                $sizeMB = [math]::Round($size / 1MB, 2)
                if ($sizeMB -ge 0.1) {
                    Write-Host "$indentStr[FILE] $name - $sizeMB MB"
                }
            }
        }
    }
    catch {
        # 에러 무시
    }
}

Write-Host "=== FTP 서버 전체 파일 트리 분석 ===" -ForegroundColor Cyan
Write-Host ""

Get-FtpDirectoryTree "/"

Write-Host ""
Write-Host "=== 분석 결과 ===" -ForegroundColor Cyan
Write-Host "총 디렉토리 수: $global:dirCount"
Write-Host "총 파일 수: $global:fileCount"
Write-Host "총 용량: $([math]::Round($global:totalSize / 1MB, 2)) MB ($([math]::Round($global:totalSize / 1GB, 2)) GB)"
