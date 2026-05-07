-- Description: 보험사 지점 위치정보 시도 집계 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_data.dt_insrnc_brnch_mega
(
    base_period       VARCHAR(10) NOT NULL,
    mega_cd           CHAR(2) NOT NULL,
    mega_nm           VARCHAR(20) NOT NULL,
    kyobo_brnch_cnt INTEGER NOT NULL,
    samsung_brnch_cnt INTEGER NOT NULL,
    hanwha_brnch_cnt  INTEGER NOT NULL,
    kyobo_bldg_cnt    INTEGER NOT NULL,
    samsung_bldg_cnt  INTEGER NOT NULL,
    hanwha_bldg_cnt   INTEGER NOT NULL,
    kyobo_bldg_rt     NUMERIC NOT NULL,
    samsung_bldg_rt   NUMERIC NOT NULL,
    hanwha_bldg_rt    NUMERIC NOT NULL,     
    rgn_area          NUMERIC NOT NULL,
    rgn_hshd_cnt      INTEGER NOT NULL,
    kyobo_area_rt     NUMERIC NOT NULL,
    samsung_area_rt   NUMERIC NOT NULL,
    hanwha_area_rt    NUMERIC NOT NULL,
    kyobo_hshd_rt     NUMERIC NOT NULL,
    samsung_hshd_rt   NUMERIC NOT NULL,
    hanwha_hshd_rt    NUMERIC NOT NULL,
    cret_dt           TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm           VARCHAR(20) NOT NULL,
    mdfy_dt           TIMESTAMP,
    mdfy_nm           VARCHAR(20),
    CONSTRAINT dt_insrnc_brnch_mega_pkey PRIMARY KEY (base_period, mega_cd)
);

COMMENT ON TABLE ecodi_data.dt_insrnc_brnch_mega IS '보험사 지점 위치정보 시도 집계';

COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.base_period IS '집계시점';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.mega_cd IS '시도코드';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.mega_nm IS '시도명';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.kyobo_brnch_cnt IS '교보생명지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.samsung_brnch_cnt IS '삼성생명지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.hanwha_brnch_cnt IS '한화생명지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.kyobo_bldg_cnt IS '교보생명지점건물개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.samsung_bldg_cnt IS '삼성생명지점건물개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.hanwha_bldg_cnt IS '한화생명지점건물개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.kyobo_bldg_rt IS '교보생명건물당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.samsung_bldg_rt IS '삼성생명건물당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.hanwha_bldg_rt IS '한화생명건물당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.rgn_area IS '지역면적';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.rgn_hshd_cnt IS '지역가구수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.kyobo_area_rt IS '교보생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.samsung_area_rt IS '삼성생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.hanwha_area_rt IS '한화생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.kyobo_hshd_rt IS '교보생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.samsung_hshd_rt IS '삼성생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.hanwha_hshd_rt IS '한화생명가구당지점개수';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_mega.mdfy_nm IS '수정자';

