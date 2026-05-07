-- Description: 보험사 지점 위치정보 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_data.dt_insrnc_brnch_pstn
(
    base_period    VARCHAR(10) NOT NULL,
    insrnc_co      VARCHAR(30) NOT NULL,
    brnch_clsf      VARCHAR(30) NOT NULL,
    brnch_nm        VARCHAR(30) NOT NULL,
    brnch_addr      VARCHAR(300) NOT NULL,
    brnch_task      VARCHAR(300),
    brnch_cntct_no  VARCHAR(200),
    road_addr       VARCHAR(200),
    lat             NUMERIC NOT NULL,
    lon             NUMERIC NOT NULL,
    mega_cd         CHAR(2) NOT NULL,
    mega_nm         VARCHAR(20) NOT NULL,
    cty_cd          CHAR(5) NOT NULL,
    cty_nm          VARCHAR(20) NOT NULL,
    admi_cd         CHAR(8) NOT NULL,
    admi_nm         VARCHAR(20) NOT NULL,
    cret_dt        TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    cret_nm        VARCHAR(20) NOT NULL,
    mdfy_dt        TIMESTAMP,
    mdfy_nm        VARCHAR(20),
    CONSTRAINT  dt_insrnc_brnch_pstn_pkey PRIMARY KEY (base_period, insrnc_co, brnch_nm)
);

COMMENT ON TABLE ecodi_data.dt_insrnc_brnch_pstn IS '보험사 지점 위치정보';

COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.base_period IS '집계시점';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.insrnc_co IS '보험사';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.brnch_clsf IS '지점분류';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.brnch_nm IS '지점명';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.brnch_addr IS '지점주소';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.brnch_task IS '지점처리업무';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.brnch_cntct_no IS '지점전화번호';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.road_addr IS '도로명주소';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.lat IS '위도';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.lon IS '경도';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.mega_cd IS '시도 코드';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.mega_nm IS '시도명';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.cty_cd IS '시군구 코드';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.cty_nm IS '시군구명';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.admi_cd IS '읍면동 코드';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.admi_nm IS '읍면동명';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.cret_dt IS '생성일시';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.cret_nm IS '생성자';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.mdfy_dt IS '수정일시';
COMMENT ON COLUMN ecodi_data.dt_insrnc_brnch_pstn.mdfy_nm IS '수정자';

