-- Description: 서울 열린데이터 광장 API 호출 오류 메시지 메타 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_api_errmsg
(
    tbl_id         VARCHAR(50) NOT NULL            COMMENT '통계표 ID',
    err_cd         VARCHAR(20) NOT NULL            COMMENT '오류코드',
    err_msg        VARCHAR(100) NOT NULL           COMMENT '오류메시지',
    cret_dt        DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm        VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt        DATETIME                        COMMENT '수정일시',
    mdfy_nm        VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_api_errmsg_pkey PRIMARY KEY (tbl_id, err_cd)
);

ALTER TABLE ecodi_meta.mt_api_errmsg COMMENT = '서울 열린데이터 광장 API 호출 오류 메시지';
