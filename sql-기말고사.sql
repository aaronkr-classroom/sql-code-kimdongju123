-- 교수 테이블
CREATE TABLE 교수 (
    교번 INT PRIMARY KEY,
    교수명 VARCHAR(50)
);

-- 강의실 테이블
CREATE TABLE 강의실 (
    강의실번호 INT PRIMARY KEY,
    좌석수 INT
);

-- 교과목 테이블
CREATE TABLE 교과목 (
    과목번호 INT PRIMARY KEY,
    과목명 VARCHAR(50)
);

-- 학생 테이블
CREATE TABLE 학생 (
    학번 INT PRIMARY KEY,
    학생명 VARCHAR(50)
);

-- 강의 관계 테이블 (교수와 강의실 연결)
CREATE TABLE 강의 (
    교번 INT,
    강의실번호 INT,
    PRIMARY KEY (교번, 강의실번호),
    FOREIGN KEY (교번) REFERENCES 교수(교번),
    FOREIGN KEY (강의실번호) REFERENCES 강의실(강의실번호)
);

-- 수강 신청 관계 테이블
CREATE TABLE 수강신청 (
    학번 INT,
    과목번호 INT,
    신청날짜 DATE,
    PRIMARY KEY (학번, 과목번호),
    FOREIGN KEY (학번) REFERENCES 학생(학번),
    FOREIGN KEY (과목번호) REFERENCES 교과목(과목번호)
);

-- 수강 취소 관계 테이블
CREATE TABLE 수강취소 (
    학번 INT,
    과목번호 INT,
    취소날짜 DATE,
    PRIMARY KEY (학번, 과목번호),
    FOREIGN KEY (학번) REFERENCES 학생(학번),
    FOREIGN KEY (과목번호) REFERENCES 교과목(과목번호)
);

-- 멘토링 관계 테이블 (학생 간 연결)
CREATE TABLE 멘토링 (
    멘토 INT,
    멘티 INT,
    PRIMARY KEY (멘토, 멘티),
    FOREIGN KEY (멘토) REFERENCES 학생(학번),
    FOREIGN KEY (멘티) REFERENCES 학생(학번)
);
