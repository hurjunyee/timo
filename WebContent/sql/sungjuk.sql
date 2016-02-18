select * from sungjuk;

drop table sungjuk;

drop sequence sungjuk_seq;

create table sungjuk(
    sno      int not null,   -- 일련번호
    uname    varchar(20),    -- 이름
    kor      int not null,   -- 국어
    eng      int not null,   -- 영어
    mat      int not null,   -- 수학
    aver     int,            -- 평균
    addr     varchar(50),    -- 주소
    wdate    date            -- 작성일
);

create sequence sungjuk_seq;