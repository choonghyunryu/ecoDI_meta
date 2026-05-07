-- Description: 서울 열린데이터 광장 API 호출 결과 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_seoul_result
(
    tbl_id         VARCHAR(50) NOT NULL,
    result_seq     INTEGER NOT NULL,
    result_id      VARCHAR(30) NOT NULL,
    result_nm      VARCHAR(300) NOT NULL,
    cret_dt        TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm        VARCHAR(20) NOT NULL,
    mdfy_dt        TIMESTAMP,
    mdfy_nm        VARCHAR(20),
    CONSTRAINT mt_seoul_result_pkey PRIMARY KEY (tbl_id, result_seq)
);


COMMENT ON TABLE ecodi_meta.mt_seoul_result IS '서울 열린데이터 광장 API 호출 결과';

COMMENT ON COLUMN ecodi_meta.mt_seoul_result.tbl_id IS '통계표 ID';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.result_seq IS '결과순번';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.result_id IS '결과변수';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.result_nm IS '결과변수명';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_result.mdfy_nm IS '수정자';
