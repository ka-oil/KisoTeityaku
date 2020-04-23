/* �Ј� */
CREATE TABLE webapp.SK_SYAIN(
	 SYAIN_ID                       CHAR(7 CHAR)        /* �Ј�ID */
	,SYAIN_NAME                     VARCHAR2(64 CHAR)   /* �Ј�_���O */
	,SYAIN_AGE                  	NUMBER(2,0)  		/* �N�� */
	,SYAIN_SEIBETU                  CHAR(1 CHAR)        /* ���� */
	,SYAIN_ZYUSYO                   VARCHAR2(64 CHAR)   /* �Z�� */
	,BUSYO_ID                 		CHAR(3 CHAR)        /* ����ID */	
)
;
ALTER TABLE webapp.SK_SYAIN ADD CONSTRAINT PK_TR_URIAGE PRIMARY KEY(SYAIN_ID)
USING INDEX
;


/* ���㖾�� */
CREATE TABLE webapp.SK_BUSYO(
	 BUSYO_ID                		CHAR(3 CHAR)       /* ����ID */
	,BUSYO_NAME        				VARCHAR2(64 CHAR)        /* ������ */
)
;
ALTER TABLE webapp.SK_BUSYO ADD CONSTRAINT PK_TR_URIAGE_MEISAI PRIMARY KEY(BUSYO_ID)
USING INDEX
;


COMMENT	ON	TABLE	webapp.SK_SYAIN			IS	'�Ј��e�[�u��';
COMMENT	ON	COLUMN	webapp.SYAIN_ID 		IS	'�Ј�ID';
COMMENT	ON	COLUMN	webapp.SYAIN_NAME		IS	'�Ј�_���O';
COMMENT	ON	COLUMN	webapp.SYAIN_AGE		IS	'�N��';
COMMENT	ON	COLUMN	webapp.SYAIN_SEIBETU	IS	'����';
COMMENT	ON	COLUMN	webapp.SYAIN_ZYUSYO		IS	'�Z��';
COMMENT	ON	COLUMN	webapp.BUSYO_ID			IS	'����ID';
COMMENT	ON	TABLE	webapp.SK_BUSYO			IS	'�����e�[�u��';
COMMENT	ON	COLUMN	webapp.BUSYO_ID			IS	'����ID';
COMMENT	ON	COLUMN	webapp.BUSYO_NAME		IS	'������';
