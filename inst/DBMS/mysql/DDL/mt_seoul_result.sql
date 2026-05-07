-- Description: 서울 열린데이터 광장 API 호출 결과 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_api_result
(
    tbl_id         VARCHAR(50) NOT NULL            COMMENT '통계표 ID',
    result_seq     INT NOT NULL                    COMMENT '결과순번',
    result_id      VARCHAR(30) NOT NULL            COMMENT '결과변수',
    result_nm      VARCHAR(300) NOT NULL           COMMENT '결과변수명',
    cret_dt        DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm        VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt        DATETIME                        COMMENT '수정일시',
    mdfy_nm        VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_api_result_pkey PRIMARY KEY (tbl_id, result_seq)
);

ALTER TABLE ecodi_meta.mt_api_result COMMENT = '서울 열린데이터 광장 API 호출 결과';
