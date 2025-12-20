# 전체 데이터베이스 리스팅
SHOW DATABASES;

# `mysql` 데이터 베이스 선택
USE mysql;

# 테이블 리스팅
SHOW TABLES;

# `db` 테이블의 구조 확인
DESCRIBE db;
DESC db;

# 기존에 `board` 데이터베이스가 존재 한다면 삭제
DROP DATABASE IF EXISTS `board`;

# 새 데이터베이스(`board`) 생성
CREATE DATABASE `board`;

# 데이터베이스 추가 되었는지 확인
SHOW DATABASES;

# `board` 데이터 베이스 선택
USE board;

# 테이블 확인
SHOW TABLES;
# 게시물 테이블(`article`)을 만듭니다.
CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    writer VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
                 ON UPDATE CURRENT_TIMESTAMP

# 잘 추가되었는지 확인
SHOW TABLES;
DESC article;
# 제목은 '제목1', 내용은 '내용1'인 데이터 하나 추가 
INSERT INTO article (title, content, writer)
VALUES ('제목1', '내용1', '관리자');
# 제목 조회
SELECT title
FROM article;# 게시물 테이블(`article`)을 만듭니다.
CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    writer VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
                 ON UPDATE CURRENT_TIMESTAMP
# 내용 조회
SELECT content
FROM article;
# 제목, 내용 칼럼 데이터 조회
SELECT title, content
FROM article;
# 내용, 제목 칼럼 데이터 조회
SELECT content, title
FROM article;
# 모든 데이터 조회
SELECT * FROM article;