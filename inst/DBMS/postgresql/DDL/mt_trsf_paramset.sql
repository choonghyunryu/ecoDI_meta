-- Description: 데이터 변환함수 호출 파라미터 값 목록 메타 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_trsf_paramset
(
    data_id        CHAR(6) NOT NULL,
    raw_table_id   VARCHAR(20) NOT NULL,
    ods_table_id   VARCHAR(50) NOT NULL,
    pov_region     VARCHAR(20) NOT NULL,
    pov_age        VARCHAR(20),
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
    CONSTRAINT mt_trsf_paramset_pkey PRIMARY KEY (data_id, ods_table_id, pov_region, function_id, param_id)
);

COMMENT ON TABLE ecodi_meta.mt_trsf_paramset IS '데이터 변환함수 호출 파라미터 값 목록';

COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.data_id IS '데이터 아이디';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.raw_table_id IS '원천테이블이름';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.ods_table_id IS 'ODS테이블이름';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.pov_region IS '지역관점';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.pov_age IS '연령대관점';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.function_id IS '호출함수ID';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.param_seq IS '파라미터순번';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.esntl_param_yn IS '필수파라미터여부';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.param_id IS '파라미터ID';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.value_set IS '값목록';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.value_set_desc IS '값목록내용';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_meta.mt_trsf_paramset.mdfy_nm IS '수정자';
