-- Description: 보험사 지점 위치정보 테이블 생성
CREATE TABLE IF NOT EXISTS ecodi_data.dt_insrnc_brnch_pstn
(
    base_period    VARCHAR(10) NOT NULL            COMMENT '집계시점',
    insrnc_co      VARCHAR(30) NOT NULL            COMMENT '보험사',
    brnch_clsf     VARCHAR(30) NOT NULL            COMMENT '지점분류',
    brnch_nm       VARCHAR(30) NOT NULL            COMMENT '지점명',
    brnch_addr     VARCHAR(300) NOT NULL           COMMENT '지점주소',
    brnch_task     VARCHAR(300)                    COMMENT '지점처리업무',
    brnch_cntct_no VARCHAR(200)                    COMMENT '지점전화번호',
    road_addr      VARCHAR(200)                    COMMENT '도로명주소',
    lat            NUMERIC NOT NULL                COMMENT '위도',
    lon            NUMERIC NOT NULL                COMMENT '경도',
    mega_cd        CHAR(2) NOT NULL                COMMENT '시도 코드',
    mega_nm        VARCHAR(20) NOT NULL            COMMENT '시도명',
    cty_cd         CHAR(5) NOT NULL                COMMENT '시군구 코드',
    cty_nm         VARCHAR(20) NOT NULL            COMMENT '시군구명',
    admi_cd        CHAR(8) NOT NULL                COMMENT '읍면동 코드',
    admi_nm        VARCHAR(20) NOT NULL            COMMENT '읍면동명',
    cret_dt        DATETIME DEFAULT now() NOT NULL COMMENT '생성일시',
    cret_nm        VARCHAR(20) NOT NULL            COMMENT '생성자',
    mdfy_dt        DATETIME                        COMMENT '수정일시',
    mdfy_nm        VARCHAR(20)                     COMMENT '수정자',
    CONSTRAINT dt_insrnc_brnch_pstn_pkey PRIMARY KEY (base_period, insrnc_co, brnch_nm)
);

ALTER TABLE ecodi_data.dt_insrnc_brnch_pstn COMMENT = '보험사 지점 위치정보';


