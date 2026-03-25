# Cafe24 Tomcat catalina.out 로그 비활성화 스크립트
# FTP를 통해 logging.properties 파일을 수정합니다

$ftpServer = "ftp://shesy11.cafe24.com"
$ftpUser = "shesy11"
$ftpPass = "Rkdwnl24!!"

# logging.properties 파일 경로
$remoteFile = "/tomcat/conf/logging.properties"
$localFile = "logging.properties.backup"
$modifiedFile = "logging.properties"

Write-Host "1. logging.properties 파일 다운로드 중..." -ForegroundColor Yellow

# FTP 다운로드
$ftpUri = "$ftpServer$remoteFile"
$webclient = New-Object System.Net.WebClient
$webclient.Credentials = New-Object System.Net.NetworkCredential($ftpUser, $ftpPass)

try {
    $webclient.DownloadFile($ftpUri, $localFile)
    Write-Host "   다운로드 완료: $localFile" -ForegroundColor Green
    
    # 파일 수정
    Write-Host "`n2. 로그 설정 수정 중..." -ForegroundColor Yellow
    
    $content = Get-Content $localFile -Raw
    
    # 새로운 설정 생성
    $newContent = @"
# Tomcat 로그 최소화 설정
# catalina.out 로그를 최소화하기 위한 설정

# 콘솔 핸들러만 사용 (파일 핸들러 비활성화)
handlers = java.util.logging.ConsoleHandler

# 전역 로그 레벨을 SEVERE로 설정 (심각한 오류만 기록)
.level = SEVERE

# 콘솔 핸들러 설정
java.util.logging.ConsoleHandler.level = SEVERE
java.util.logging.ConsoleHandler.formatter = org.apache.juli.OneLineFormatter

# 개별 로거 설정 (모두 SEVERE로)
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].level = SEVERE
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/manager].level = SEVERE
org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/host-manager].level = SEVERE

# 원본 설정 (백업용 주석)
# $content
"@
    
    $newContent | Out-File -FilePath $modifiedFile -Encoding UTF8
    Write-Host "   설정 수정 완료" -ForegroundColor Green
    
    # FTP 업로드
    Write-Host "`n3. 수정된 파일 업로드 중..." -ForegroundColor Yellow
    $webclient.UploadFile($ftpUri, $modifiedFile)
    Write-Host "   업로드 완료" -ForegroundColor Green
    
    Write-Host "`n완료! Tomcat을 재시작하면 로그가 최소화됩니다." -ForegroundColor Cyan
    Write-Host "Cafe24 관리자 페이지에서 Tomcat 재시작을 진행하세요." -ForegroundColor Cyan
    
} catch {
    Write-Host "오류 발생: $_" -ForegroundColor Red
    Write-Host "`nSSH 접근이 필요한 경우 Cafe24 고객센터(1544-7772)에 문의하세요." -ForegroundColor Yellow
} finally {
    $webclient.Dispose()
}
