-- Description: 데이터 수집함수 호출 파라미터 값 목록 메타 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_clct_paramset
(
    raw_table_id   VARCHAR(20) NOT NULL,
    function_id    VARCHAR(20) NOT NULL,
    param_seq      INTEGER NOT NULL,
    esntl_param_yn CHAR(1) NOT NULL,    
    param_id       VARCHAR(30),    
    value_set      VARCHAR(200),
    value_set_desc VARCHAR(200),
    cret_dt        TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm        VARCHAR(20) NOT NULL,
    mdfy_dt        TIMESTAMP,
    mdfy_nm        VARCHAR(20),
    CONSTRAINT mt_clct_paramset_pkey PRIMARY KEY (raw_table_id, function_id, param_id)
);

COMMENT ON TABLE ecodi_meta.mt_clct_paramset IS '데이터 수집함수 호출 파라미터 값 목록';

COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.raw_table_id IS '원천테이블이름';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.function_id IS '호출함수ID';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.param_seq IS '파라미터순번';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.esntl_param_yn IS '필수파라미터여부';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.param_id IS '파라미터ID';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.value_set IS '값목록';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.value_set_desc IS '값목록내용';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_meta.mt_clct_paramset.mdfy_nm IS '수정자';

