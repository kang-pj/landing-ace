# FTP 배포 스크립트 - Tomcat webapps에 배포
Write-Host "Maven 빌드 시작..." -ForegroundColor Yellow
mvn clean package

if ($LASTEXITCODE -ne 0) {
    Write-Host "빌드 실패!" -ForegroundColor Red
    exit 1
}

Write-Host "빌드 완료! FTP 업로드 시작..." -ForegroundColor Green

# FTP 업로드
$result = curl.exe -T target\ROOT.war "ftp://shesy11.cafe24.com/tomcat/webapps/ROOT.war" --user "shesy11:Rkdwnl24!!" --ftp-pasv

if ($LASTEXITCODE -eq 0) {
    Write-Host "배포 완료! Tomcat이 자동으로 애플리케이션을 배포합니다." -ForegroundColor Green
} else {
    Write-Host "업로드 실패!" -ForegroundColor Red
    exit 1
}
