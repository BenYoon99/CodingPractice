#2026 1월3일 DB 연습문제 풀이( db하나만 다루기 )

# mall 데이터베이스 만들고 데이터넣기 -> 선생님이 주신 틀 사용 

DROP DATABASE mall;

CREATE DATABASE mall;

USE mall;

CREATE TABLE t_shopping(
id INT(5) PRIMARY KEY AUTO_INCREMENT,
userId CHAR(30) NOT NULL,
userPw CHAR(30) NOT NULL,
userName CHAR(30) NOT NULL,
address CHAR(50) NOT NULL,
pname CHAR(50) NOT NULL,
price INT(5) NOT NULL
);

INSERT INTO t_shopping 
SET userId = 'user1',
userPw = 'pass1',
userName = '손흥민',
address = '런던',
pname = '운동화',
price = 1000000;

INSERT INTO t_shopping 
SET userId = 'user2',
userPw = 'pass2',
userName = '설현',
address = '서울',
pname = '코트',
price = 100000;

INSERT INTO t_shopping 
SET userId = 'user3',
userPw = 'pass3',
userName = '원빈',
address = '대전',
pname = '반바지',
price = 30000;

INSERT INTO t_shopping 
SET userId = 'user4',
userPw = 'pass4',
userName = '송혜교',
address = '대구',
pname = '스커트',
price = 15000;

INSERT INTO t_shopping 
SET userId = 'user5',
userPw = 'pass5',
userName = '소지섭',
address = '부산',
pname = '코트',
price = 100000;

INSERT INTO t_shopping 
SET userId = 'user6',
userPw = 'pass6',
userName = '김지원',
address = '울산',
pname = '티셔츠',
price = 9000;

INSERT INTO t_shopping 
SET userId = 'user6',
userPw = 'pass6',
userName = '김지원',
address = '울산',
pname = '운동화',
price = 200000;

INSERT INTO t_shopping 
SET userId = 'user1',
userPw = 'pass1',
userName = '손흥민',
address = '런던',
pname = '코트',
price = 100000;

INSERT INTO t_shopping 
SET userId = 'user4',
userPw = 'pass4',
userName = '송혜교',
address = '울산',
pname = '스커트',
price = 15000;

INSERT INTO t_shopping 
SET userId = 'user1',
userPw = 'pass1',
userName = '손흥민',
address = '런던',
pname = '운동화',
price = 1000000;

INSERT INTO t_shopping 
SET userId = 'user5',
userPw = 'pass5',
userName = '소지섭',
address = '부산',
pname = '모자',
price = 30000;

# 1. 손흥민의 주문 개수는? ???
SHOW DATABASES;
USE mall;
SELECT * FROM t_shopping;
SELECT DISTINCT userName, pname
FROM t_shopping
WHERE userID = 'user1';
#이거 디스팅트 안박으니까 운동화랑 코트가 ㅈㄴ나옴 고로 둘다 디스팅트 박으면될듯 
#디스팅트하나만 박아도 뒤에 둘다 적용됨 ㅇㅇ
#정답 :2개 

# 2. 손흥민이 산 상품은? ???
#정답 운동화 코트 


# 3. 스커트를 산 사람은? ???
SELECT * FROM t_shopping;
SELECT DISTINCT username
FROM t_shopping
WHERE pname = '스커트';

#결과값 송혜교 <- 하나만 나옴
# 정답= 송혜교
 
# 4. 가장 많이 주문한 사람의 아이디와 이름, 주문개수는? ???
SELECT * FROM t_shopping;
SELECT userName, userId, COUNT(*) AS cnt
FROM t_shopping
GROUP BY userName
ORDER BY cnt DESC;
#아니; 이거 그룹아이디로 묶으면 애초에 횟수 셀수있으니까 

# 여기서 cnt는 그냥 실행할떄만 잠깐 쓰는 놈임 
# 여기서는 그룹바이를 유저네임으로 묶건 아이디로 묶건 결과값같음 왜와이 짜피 다 한명한테 각각 배정된 데이터값이라 ㅇㅇㅇㅇ


# 5. 소지섭이 사용한 총 금액은? ???
SELECT * FROM t_shopping;
SELECT price
FROM t_shopping 
WHERE userName = '소지섭';
#이경우에는 더하지 않고 그냥 나열해서 보여줘서 걍 노가다임 
SELECT * FROM t_shopping;
# 어케더하노 select sum() ㅇㅇ but 그게 숫자 칼럼인경우만 사용가능 
SELECT SUM(price)
FROM t_shopping
WHERE userId = '소지섭';
#널값뜸 아 실수다 userid 
SELECT SUM(price)
FROM t_shopping 
WHERE userName = '소지섭';

#뷰리풀 26만원 나옴  정답 = 260000
