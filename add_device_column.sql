-- inquiries 테이블에 device 컬럼 추가
ALTER TABLE inquiries 
ADD COLUMN device VARCHAR(20) DEFAULT 'PC' AFTER monthly_income;

-- 기존 데이터에 대해 device 값 업데이트 (선택사항)
UPDATE inquiries 
SET device = 'PC' 
WHERE device IS NULL;

-- 컬럼 추가 확인
DESCRIBE inquiries;