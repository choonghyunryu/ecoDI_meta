-- Description: 외부데이터 테이블 출처 정보 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_table_src
(
    table_id    VARCHAR(50) NOT NULL            COMMENT '테이블 이름',
    org_id      VARCHAR(40) NOT NULL            COMMENT '제공기관 코드', 
    org_nm      VARCHAR(40) NOT NULL            COMMENT '제공기관 명칭',
    stat_id     VARCHAR(40)                     COMMENT '통계조사 ID',
    josa_nm     VARCHAR(100)                    COMMENT '출처 명칭',
    dept_phone  VARCHAR(40)                     COMMENT '출처 전화번호',
    dept_nm     VARCHAR(100)                    COMMENT '제공 부서',
    cret_dt     DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm     VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt     DATETIME                        COMMENT '수정일시',
    mdfy_nm     VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_table_src_pkey PRIMARY KEY (table_id)
);

ALTER TABLE ecodi_meta.mt_table_src COMMENT = '외부데이터 테이블 출처 정보';
