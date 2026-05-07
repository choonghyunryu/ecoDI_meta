-- Description: 서울 열린데이터 광장 API 통계 목록 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_seoul_stat
(
    tbl_id          VARCHAR(50) NOT NULL            COMMENT '통계표 ID',
    tbl_nm          VARCHAR(300)                    COMMENT '통계표명',
    tbl_desc        VARCHAR(1000)                   COMMENT '통계표비고',
    rls_ymd         VARCHAR(8)                      COMMENT '공개일자',
    data_updt_ymd   VARCHAR(8)                      COMMENT '데이터갱신일',
    updt_cycle      VARCHAR(2)                      COMMENT '갱신주기',
    updt_cycle_desc VARCHAR(40)                     COMMENT '갱신주기상세',
    data_clss       VARCHAR(50)                     COMMENT '데이터분류',
    orgnl_sys       VARCHAR(300)                    COMMENT '원본시스템',
    data_cprhdr     VARCHAR(300)                    COMMENT '저작권자',
    pvsn_org        VARCHAR(300)                    COMMENT '제공기관',
    pvsn_dept       VARCHAR(300)                    COMMENT '제공부서',
    pic_no          VARCHAR(300)                    COMMENT '담당자연락처',
    orgnl_shp       VARCHAR(300)                    COMMENT '원본형태',
    thrd_cprhdr     VARCHAR(300)                    COMMENT '제3저작권자'
    lcn_type        VARCHAR(300)                    COMMENT '라이선스',
    meta_mdfcn_ymd  VARCHAR(8)                      COMMENT '메타정보수정일',
    data_tag        VARCHAR(300)                    COMMENT '관련태그',
    cret_dt         DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm         VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt         DATETIME                        COMMENT '수정일시',
    mdfy_nm         VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT mt_seoul_stat_pkey PRIMARY KEY (tbl_id)
);

ALTER TABLE ecodi_meta.mt_seoul_stat COMMENT = '서울 열린데이터 광장 API 통계 목록';
