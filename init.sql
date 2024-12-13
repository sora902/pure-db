-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS pure_shop;

-- 데이터베이스 사용
USE pure_shop;

-- users 테이블 생성
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,        -- 고유 사용자 ID
    id VARCHAR(50) NOT NULL UNIQUE,                -- 사용자 아이디 (Unique)
    password VARCHAR(255) NOT NULL,                -- 암호화된 비밀번호
    name VARCHAR(100) NOT NULL,                    -- 사용자 이름
    email VARCHAR(100) NOT NULL UNIQUE,            -- 사용자 이메일 (Unique)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 생성 시간
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 수정 시간
);

-- 초기 데이터 삽입 (테스트용)
INSERT INTO users (id, password, name, email)
VALUES 
    ('testuser', 'hashed_password_1', '테스트 유저', 'testuser@example.com'),
    ('admin', 'hashed_password_2', '관리자', 'admin@example.com');

