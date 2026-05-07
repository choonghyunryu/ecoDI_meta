-- Description: 서울 열린데이터 광장 API 통계 목록 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_meta.mt_seoul_stat
(
    tbl_id          VARCHAR(50) NOT NULL,
    tbl_nm          VARCHAR(300),
    tbl_desc        VARCHAR(1000),
    rls_ymd         VARCHAR(8),
    data_updt_ymd   VARCHAR(8),
    updt_cycle      VARCHAR(2),
    updt_cycle_desc VARCHAR(40),
    data_clss       VARCHAR(50),
    orgnl_sys       VARCHAR(300),
    data_cprhdr     VARCHAR(300),
    pvsn_org        VARCHAR(300),
    pvsn_dept       VARCHAR(300),
    pic_no          VARCHAR(300),
    orgnl_shp       VARCHAR(300),
    thrd_cprhdr     VARCHAR(300),
    lcn_type        VARCHAR(300),
    meta_mdfcn_ymd  VARCHAR(8),
    data_tag        VARCHAR(300),
    cret_dt         TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm         VARCHAR(20) NOT NULL,
    mdfy_dt         TIMESTAMP,
    mdfy_nm         VARCHAR(20),
    CONSTRAINT mt_seoul_stat_pkey PRIMARY KEY (tbl_id)
);

COMMENT ON TABLE ecodi_meta.mt_seoul_stat IS '서울 열린데이터 광장 API 통계 목록';

COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.tbl_id IS '통계표 ID';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.tbl_nm IS '통계표명';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.tbl_desc IS '통계표비고';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.rls_ymd IS '공개일자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.data_updt_ymd IS '데이터갱신일';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.updt_cycle IS '갱신주기';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.updt_cycle_desc IS '갱신주기상세';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.data_clss IS '데이터분류';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.orgnl_sys IS '원본시스템';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.data_cprhdr IS '저작권자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.pvsn_org IS '제공기관';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.pvsn_dept IS '제공부서';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.pic_no IS '담당자연락처';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.orgnl_shp IS '원본형태';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.thrd_cprhdr IS '제3저작권자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.lcn_type IS '라이선스';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.meta_mdfcn_ymd IS '메타정보수정일';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.data_tag IS '관련태그';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_meta.mt_seoul_stat.mdfy_nm IS '수정자';
