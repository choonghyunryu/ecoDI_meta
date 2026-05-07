-- Description: 서울 열린데이터 광장 API 파라미터 목록 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_seoul_param
(
    tbl_id         VARCHAR(50) NOT NULL            COMMENT '통계표 ID',
    param_seq      INT NOT NULL                    COMMENT '파라미터순번',
    param_id       VARCHAR(50) NOT NULL            COMMENT '파라미터',
    param_nm       VARCHAR(50) NOT NULL            COMMENT '파라미터명칭',
    param_type     VARCHAR(10) NOT NULL            COMMENT '파라미터유형',  
    param_desc     VARCHAR(500) NOT NULL           COMMENT '파라미터설명',      
    default_value  VARCHAR(50)                     COMMENT '기본설정값',
    is_must        CHAR(1) DEFAULT 'Y' NOT NULL    COMMENT '필수파라미터여부',
    is_key         CHAR(1) DEFAULT 'N' NOT NULL    COMMENT 'APIKey파라미터여부',
    is_constant    CHAR(1) DEFAULT 'N' NOT NULL    COMMENT '파라미터값상수여부',
    is_list        CHAR(1) DEFAULT 'N' NOT NULL    COMMENT '파라미터값목록여부',
    cret_dt        DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm        VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt        DATETIME                        COMMENT '수정일시',
    mdfy_nm        VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_seoul_param_pkey PRIMARY KEY (tbl_id, param_seq)
);

ALTER TABLE ecodi_meta.mt_seoul_param COMMENT = '서울 열린데이터 광장 API 파라미터 목록';
