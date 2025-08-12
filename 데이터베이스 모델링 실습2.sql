/*
	날짜 : 2025/08/12
    이름 : 손진일
    내용 : 데이터베이스 모델링 실습2
*/

-- 사용자 추가
create user 'university'@'%' identified by '1234';
grant all privileges on university.* to 'university'@'%';
flush privileges;

use university;


-- student
insert into student values (20101001, 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', null, '서울');
insert into student values (20101002, 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', null, '서울');
insert into student values (20111011, 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', null);
insert into student values (20111013, 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
insert into student values (20111014, 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');
insert into student values (21221010, 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
insert into student values (21231002, 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', null);
insert into student values (22311011, 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
insert into student values (22311014, 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', null, '부산');
insert into student values (22401001, 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', null, '부산');
insert into student values (22401002, 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주');
insert into student values (22421003, 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');
select * from student;
delete from student;

-- professor
insert into professor values ('P10101', 10, '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울');
insert into professor values ('P10102', 10, '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울');
insert into professor values ('P11101', 11, '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전');
insert into professor values ('P11103', 11, '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', null);
insert into professor values ('P11104', 11, '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');
insert into professor values ('P22110', 22, '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구');
insert into professor values ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr', null);
insert into professor values ('P31101', 31, '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구');
insert into professor values ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산');
insert into professor values ('P40101', 40, '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산');
insert into professor values ('P40102', 40, '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', null);
insert into professor values ('P42103', 42, '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주');
select * from professor;
delete from professor;

-- department
insert into department values (10, '국어국문학과', '051-510-1010');
insert into department values (11, '영어영문학과', '051-510-1011');
insert into department values (20, '경영학과', '051-510-1020');
insert into department values (21, '경제학과', '051-510-1021');
insert into department values (22, '정치외교학과', '051-510-1022');
insert into department values (23, '사회복지학과', '051-510-1023');
insert into department values (30, '수학과', '051-510-1030');
insert into department values (31, '통계학과', '051-510-1031');
insert into department values (32, '생명과학과', '051-510-1032');
insert into department values (40, '기계공학과', '051-510-1040');
insert into department values (41, '전자공학과', '051-510-1041');
insert into department values (42, '컴퓨터공학과', '051-510-1042');
select * from department;
delete from department;

insert into course values (101001, 'P10101', '대학 글쓰기', 2, 100, '본102');
insert into course values (101002, 'P10102', '한국어음운론', 3, 300, '본102');
insert into course values (101003, 'P10102', '한국현대문학사', 3, 300, '본103');
insert into course values (111011, 'P11103', '중세영문학', 3, 200, '본201');
insert into course values (111012, 'P11104', '영미시', 3, 200, '본201');
insert into course values (231110, 'P23102', '사회복지학개론', 2, 180, '별관103');
insert into course values (311002, 'P31101', '통계의 이해', 2, 160, '별관303');
insert into course values (311003, 'P31104', '기초 통계학', 3, 600, '별관303');
insert into course values (401019, 'P40101', '기계역학', 3, 600, '공학관 102');
insert into course values (421012, 'P42103', '데이터베이스', 3, 800, '공학관 103');
select * from course;

-- enrollment
insert into enrollment(stdno, csno, prono) values(20101001, 101001, 'P10101');
insert into enrollment(stdno, csno, prono) values(20101001, 101002, 'P10102');
insert into enrollment(stdno, csno, prono) values(20111013, 111011, 'P11103');
insert into enrollment(stdno, csno, prono) values(21231002, 231110, 'P23102');
insert into enrollment(stdno, csno, prono) values(22401001, 401019, 'P40101');
insert into enrollment(stdno, csno, prono) values(22401001, 421012, 'P42103');
insert into enrollment(stdno, csno, prono) values(20101001, 101003, 'P10102');
insert into enrollment(stdno, csno, prono) values(22421003, 311003, 'P31104');
insert into enrollment(stdno, csno, prono) values(22421003, 421012, 'P42103');
insert into enrollment(stdno, csno, prono) values(20111013, 111012, 'P11104');
select * from enrollment;

-- 문제1. 모든 학생의 학생번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
select s.stdno, s.stdname, s.stdhp, s.depno, d.depname
		from student s join department d
        on s.depno = d.depno;
        
-- 문제2. 모든 교수의 교수번호, 이름, 휴대폰, 학과번호, 학과명을 조회하시오.
select p.prono, p.prodname, p.prodhp, p.depno, d.depname
		from professor p join department d
        on p.depno = d.depno;
        
-- 문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.
select c.csno, c.csname, p.prodname, p.prodhp
		from professor p join course c
        on p.prono = c.prono;
        
-- 문제4. 모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오.
select c.csno, c.csname, c.prono, p.prodname, p.prodhp, p.depno, d.depname
		from professor p join department d
        on p.depno = d.depno
        join course c
        on p.prono = c.prono;
        
-- 문제5. 모든 수강 내역에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.
select s.stdno, s.stdname, c.csno, c.csname, c.prono, p.prodname
		from student s join professor p
        on s.prodno = p.prono
        join course c
        on p.prono = c.prono;
        
-- 문제6. 수강 테이블에 출석점수, 중간고사 점수, 기말고사 점수를 임의로 입력하시오.(1~100 사이)
update enrollment set
		scoreattd = ceil(rand() * 100),
        scoremid = ceil(rand() * 100),
        scorefinal = ceil(rand() * 100);
select * from enrollment;

-- 문제7. 수강 테이블에 출석점수, 중간고사 점수, 기말고사 점수를 모두 더한 평균을 구해 총점에 입력하시오.
update enrollment set
		scoretotal = (scoreattd + scoremid + scorefinal) / 3;
select * from enrollment;

-- 문제8. 수강 테이블에 총점을 기준으로 A ~ F 등급을 입력하시오.
update enrollment set
		scoregrade = case
			when scoretotal >= 90 then 'A'
            when scoretotal >= 80 then 'B'
            when scoretotal >= 70 then 'C'
            when scoretotal >= 60 then 'D'
			else 'F'
		end;
select * from enrollment;

-- 문제9. 수강 테이블에서 총점이 가장 큰 점수를 조회하시오.
select max(scoretotal) from enrollment;

-- 문제10. 수강 테이블에서 정우성 학생의 총점의 평균을 조회하시오.
select avg(scoretotal)
		from enrollment e join student s
        on e.stdno = s.stdno
        where s.stdname = '정우성'
        group by e.stdno;