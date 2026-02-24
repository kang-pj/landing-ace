-- access_logs 테이블에 company_id 컬럼 추가
ALTER TABLE access_logs 
ADD COLUMN company_id VARCHAR(50) NULL AFTER id,
ADD INDEX idx_company_id (company_id);

-- 기존 데이터에 기본값 설정 (필요시)
UPDATE access_logs SET company_id = 'COMP0001' WHERE company_id IS NULL;
