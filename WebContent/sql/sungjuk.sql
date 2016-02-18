select * from sungjuk;

drop table sungjuk;

drop sequence sungjuk_seq;

create table sungjuk(
    sno      int not null,   -- �Ϸù�ȣ
    uname    varchar(20),    -- �̸�
    kor      int not null,   -- ����
    eng      int not null,   -- ����
    mat      int not null,   -- ����
    aver     int,            -- ���
    addr     varchar(50),    -- �ּ�
    wdate    date            -- �ۼ���
);

create sequence sungjuk_seq;