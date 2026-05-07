-- Description: 서울 열린데이터 광장 API 파라미터 목록 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_seoul_param
(
    tbl_id         VARCHAR(50) NOT NULL,
    param_seq      INT NOT NULL,
    param_id       VARCHAR(50) NOT NULL,
    param_nm       VARCHAR(50) NOT NULL,
    param_type     VARCHAR(10) NOT NULL,
    param_desc     VARCHAR(500),
    default_value  VARCHAR(50),
    is_must        CHAR(1) DEFAULT 'Y' NOT NULL,
    is_key         CHAR(1) DEFAULT 'N' NOT NULL,
    is_constant    CHAR(1) DEFAULT 'N' NOT NULL,
    is_list        CHAR(1) DEFAULT 'Y' NOT NULL,
    cret_dt        TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm        VARCHAR(20) NOT NULL,
    mdfy_dt        TIMESTAMP,
    mdfy_nm        VARCHAR(20),
    CONSTRAINT mt_seoul_param_pkey PRIMARY KEY (tbl_id, param_seq)
);

COMMENT ON TABLE ecodi_meta.mt_seoul_param IS '서울 열린데이터 광장 API 파라미터 목록';

COMMENT ON COLUMN ecodi_meta.mt_seoul_param.tbl_id IS '통계표 ID';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.param_seq IS '파라미터순번';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.param_id IS '파라미터';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.param_nm IS '파라미터명칭';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.param_type IS '파라미터유형';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.param_type IS '파라미터설명';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.default_value IS '기본설정값';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.is_must IS '필수파라미터여부';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.is_key IS 'APIKey파라미터여부';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.is_constant IS '파라미터값상수여부';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.is_list IS '파라미터값목록여부';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.parent_seq IS '상위 파라미터순번';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_param.mdfy_nm IS '수정자';
