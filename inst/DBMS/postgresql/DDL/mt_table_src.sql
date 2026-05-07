-- Description: 외부데이터 테이블 출처 정보 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_table_src
(
    table_id    VARCHAR(50) NOT NULL,
    org_id      VARCHAR(40) NOT NULL,
    org_nm      VARCHAR(40) NOT NULL,
    stat_id     VARCHAR(40),
    josa_nm     VARCHAR(100),
    dept_phone  VARCHAR(40),
    dept_nm     VARCHAR(100),
    cret_dt     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm     VARCHAR(20) NOT NULL,
    mdfy_dt     TIMESTAMP,
    mdfy_nm     VARCHAR(20),
    CONSTRAINT mt_table_src_pkey PRIMARY KEY (table_id)
);

COMMENT ON TABLE ecodi_meta.mt_table_src IS '외부데이터 테이블 출처 정보';

COMMENT ON COLUMN mt_table_src.table_id IS '테이블 이름';
COMMENT ON COLUMN mt_table_src.org_id IS '제공기관 코드';
COMMENT ON COLUMN mt_table_src.org_nm IS '제공기관 명칭';
COMMENT ON COLUMN mt_table_src.stat_id IS '통계조사 ID';
COMMENT ON COLUMN mt_table_src.josa_nm IS '출처 명칭';
COMMENT ON COLUMN mt_table_src.dept_phone IS '출처 전화번호';
COMMENT ON COLUMN mt_table_src.dept_nm IS '제공 부서';
COMMENT ON COLUMN mt_table_src.cret_dt IS '생성일시';
COMMENT ON COLUMN mt_table_src.cret_nm IS '생성자';
COMMENT ON COLUMN mt_table_src.mdfy_dt IS '수정일시';
COMMENT ON COLUMN mt_table_src.mdfy_nm IS '수정자';
