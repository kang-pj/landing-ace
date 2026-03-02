# MariaDB 테이블 생성 스크립트
$dbHost = "shesy11.cafe24.com"
$dbPort = "3306"
$dbName = "shesy11"
$dbUser = "shesy11"
$dbPassword = "Rkdwnl24(("

Write-Host "MariaDB 테이블 생성 중..." -ForegroundColor Yellow

# SQL 파일 읽기
$sqlContent = Get-Content -Path "create_tables.sql" -Raw -Encoding UTF8

# MySQL 클라이언트로 실행
$mysqlCommand = "mysql -h $dbHost -P $dbPort -u $dbUser -p$dbPassword $dbName"

try {
    # SQL 파일을 MySQL에 전달
    $sqlContent | & mysql -h $dbHost -P $dbPort -u $dbUser "-p$dbPassword" $dbName
    
    Write-Host "테이블 생성 완료!" -ForegroundColor Green
    Write-Host "- traffic_logs 테이블 생성됨" -ForegroundColor Green
    Write-Host "- consultation_leads 테이블 생성됨" -ForegroundColor Green
}
catch {
    Write-Host "테이블 생성 실패: $_" -ForegroundColor Red
    Write-Host "수동으로 create_tables.sql 파일을 실행해주세요." -ForegroundColor Yellow
}
