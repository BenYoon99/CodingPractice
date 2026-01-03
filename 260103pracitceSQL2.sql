# 260103 DB (join chatgpt 문제자습 ) 
#먼저 챗지피티가 주는 데이터베이스 생성 그냥 복붙 삽입해서 

-- 기존에 a2라는 DB가 있으면 삭제
DROP DATABASE IF EXISTS a2;

-- 새 데이터베이스 생성
CREATE DATABASE a2;

-- 새 데이터베이스 사용
USE a2;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    NAME VARCHAR(50)
);

INSERT INTO Customers (CustomerID, NAME) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, Product) VALUES
(101, 1, 'Apple'),
(102, 2, 'Banana'),
(103, 1, 'Orange'),
(104, 3, 'Grape'),
(105, 2, 'Kiwi');


# 예제 문제 ( 챗지피티 )

#1 테이블 별칭사용해보기 
SELECT * FROM customers;
#여기서 혹시 두 테이블을 한번에 볼수는 없을까?
SELECT * FROM customers, orders;
# 근데 이렇게만해도 테이블 합쳐서 보여지는듯 한데 ㄴㄴ ㅈㄴ난잡하네 
# 근데 테이블 별칭은 왜 ? 필요한거지
SHOW DATABASES;
USE a2;
SELECT *FROM customers;
SELECT *FROM orders;
SHOW TABLES;
SELECT c.customerID, o.orderID
FROM customers AS c, orders AS o
ORDER BY o.orderID DESC;
SHOW TABLES;

#2 칼럼 별칭 사용해보기 
SELECT * FROM customers;
SELECT customerID AS babo 
FROM customers;
#3 innerjoin 사용해보기 
SELECT *FROM customers;
SELECT *FROM orders;
#커스터머 아이디가 같으니까 
SELECT c.name AS customername , o.product AS productname
FROM Customers AS c
INNER JOIN orders AS o
ON c.customerID = o.customerID;
#근데 여기서 alice가 애플이랑 그레이프를 삿고 밥이 바나나와 키위를 둘다삿기에 열이 되게 난잡하게 나옴 그럼 디스팅트 ?
SELECT DISTINCT c.name AS customername , o.product AS productname
FROM Customers AS c
INNER JOIN orders AS o
ON c.customerID = o.customerID;
 #차이가 없는디 왜지 이거 궁금하네 // 지피티 설명들어도 지금 머리터질거같아서 다음에 보이며 먹기 
 
#4 group by 사용해보기
SHOW DATABASES;
SELECT *FROM customers;
SELECT c.name AS hogang , o.product AS trash
FROM customers AS c 
INNER JOIN orders AS o 
ON c.customerID = o.customerID 
GROUP BY c.name , o.product;
# 내가원하는데로 안나온다 .. 오늘은 일단 여기까지..  