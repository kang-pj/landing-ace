-- traffic_logs 테이블에 company_id 컬럼 추가
ALTER TABLE traffic_logs 
ADD COLUMN company_id VARCHAR(20) NOT NULL DEFAULT 'COMP0001' COMMENT '회사 식별자 - 에이스 법무법인: COMP0001' 
AFTER id;

-- 인덱스 추가 (회사별 조회 성능 향상)
CREATE INDEX idx_company_id ON traffic_logs(company_id);

-- 기존 데이터에 company_id 설정 (이미 DEFAULT로 설정되지만 명시적으로)
UPDATE traffic_logs SET company_id = 'COMP0001' WHERE company_id IS NULL OR company_id = '';
