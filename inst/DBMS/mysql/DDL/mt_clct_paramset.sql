-- Description: 데이터 수집함수 호출 파라미터 값 목록 메타 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_clct_paramset
(
    raw_table_id   VARCHAR(20) NOT NULL            COMMENT '원천테이블이름',
    function_id    VARCHAR(20) NOT NULL            COMMENT '호출함수ID',
    param_seq      INT NOT NULL                    COMMENT '파라미터순번',
    esntl_param_yn CHAR(1) NOT NULL                COMMENT '필수 파라미터순번',
    param_id       VARCHAR(30)                     COMMENT '파라미터ID',
    value_set      VARCHAR(200)                    COMMENT '값목록',
    value_set_desc VARCHAR(200)                    COMMENT '값목록내용',
    cret_dt        DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm        VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt        DATETIME                        COMMENT '수정일시',
    mdfy_nm        VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_clct_paramset_pkey PRIMARY KEY (raw_table_id, function_id, param_id)
);

ALTER TABLE ecodi_meta.mt_clct_paramset COMMENT = '데이터 수집함수 호출 파라미터 값 목록';

