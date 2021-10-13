CREATE SEQUENCE seq_board;

CREATE TABLE tbl_board (
    bno        NUMBER(10, 0),
    title      VARCHAR2(200) NOT NULL,
    content    VARCHAR2(2000) NOT NULL,
    writer     VARCHAR2(50) NOT NULL,
    regdate    DATE DEFAULT sysdate,
    updatedate DATE DEFAULT sysdate
);

ALTER TABLE tbl_board ADD CONSTRAINT pk_board PRIMARY KEY ( bno );

INSERT INTO tbl_board (
    bno,
    title,
    content,
    writer
) VALUES (
    seq_board.NEXTVAL,
    '테스트 제목',
    '테스트 내용',
    'user00'
);

COMMIT;

SELECT * FROM tbl_board;

SELECT * FROM TBL_BOARD ORDER BY BNO DESC;

INSERT INTO TBL_BOARD (BNO, TITLE, CONTENT, WRITER)
(SELECT SEQ_BOARD.NEXTVAL, TITLE, CONTENT, WRITER FROM TBL_BOARD);
COMMIT;

SELECT * FROM tbl_board ORDER BY BNO DESC;

SELECT
    /*+ INDEX_DESC(TBL_BOARD PK_BOARD) */
    *
FROM
    TBL_BOARD
WHERE BNO > 0;

SELECT * FROM TBL_BOARD ORDER BY BNO DESC;

SELECT
    /*+ INDEX_DESC(TBL_BOARD PK_BOARD) */
    *
FROM
    TBL_BOARD
