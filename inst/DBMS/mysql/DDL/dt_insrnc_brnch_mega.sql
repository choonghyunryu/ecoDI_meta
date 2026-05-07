-- Description: 보험사 지점 위치정보 시도 집계 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_data.dt_insrnc_brnch_mega
(
    base_period       VARCHAR(10) NOT NULL            COMMENT '집계시점',
    mega_cd           CHAR(2) NOT NULL                COMMENT '시도코드',
    mega_nm           VARCHAR(20) NOT NULL            COMMENT '시도명',
    kyobo_brnch_cnt   INTEGER NOT NULL                COMMENT '교보생명지점개수',
    samsung_brnch_cnt INTEGER NOT NULL                COMMENT '삼성생명지점개수',
    hanwha_brnch_cnt  INTEGER NOT NULL                COMMENT '한화생명지점개수',
    kyobo_bldg_cnt    INTEGER NOT NULL                COMMENT '교보생명지점건물개수',
    samsung_bldg_cnt  INTEGER NOT NULL                COMMENT '삼성생명지점건물개수',
    hanwha_bldg_cnt   INTEGER NOT NULL                COMMENT '한화생명지점건물개수',
    kyobo_bldg_rt     INTEGER NOT NULL                COMMENT '교보생명건물당지점개수',
    samsung_bldg_rt   INTEGER NOT NULL                COMMENT '삼성생명건물당지점개수',
    hanwha_bldg_rt    INTEGER NOT NULL                COMMENT '한화생명건물당지점개수',
    rgn_area          NUMERIC NOT NULL                COMMENT '지역면적',
    rgn_hshd_cnt      INTEGER NOT NULL                COMMENT '지역가구수',
    kyobo_area_rt     NUMERIC NOT NULL                COMMENT '교보생명면적당지점개수',
    samsung_area_rt   NUMERIC NOT NULL                COMMENT '삼성생명면적당지점개수',
    hanwha_area_rt    NUMERIC NOT NULL                COMMENT '한화생명면적당지점개수',
    kyobo_hshd_rt     NUMERIC NOT NULL                COMMENT '교보생명가구당지점개수',
    samsung_hshd_rt   NUMERIC NOT NULL                COMMENT '삼성생명가구당지점개수',
    hanwha_hshd_rt    NUMERIC NOT NULL                COMMENT '한화생명가구당지점개수',
    cret_dt           DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm           VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt           DATETIME                        COMMENT '수정일시',
    mdfy_nm           VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT dt_insrnc_brnch_mega_pkey PRIMARY KEY (base_period, mega_cd)
);

ALTER TABLE ecodi_data.dt_insrnc_brnch_mega COMMENT = '보험사 지점 위치정보 시도 집계';


