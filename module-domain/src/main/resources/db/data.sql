-- 부서
INSERT INTO department (type)
VALUES
    ('DEVELOPMENT'),
    ('PLANNING'),
    ('SALES'),
    ('HR'),
    ('ACCOUNTING'),
    ('LEGAL');

-- 직급
INSERT INTO position (type)
VALUES
    ('STAFF'),
    ('ASSISTANT_MANAGER'),
    ('MANAGER'),
    ('DEPUTY_GENERAL_MANAGER'),
    ('GENERAL_MANAGER');

-- 직급별 연차 개수
INSERT INTO day_off_by_position (position_id, amount)
VALUES
    (1, 15),
    (2, 17),
    (3, 19),
    (4, 21),
    (5, 23);

-- 상태
INSERT INTO status (type)
VALUES
    ('JOINED'),
    ('RESIGNED'),
    ('REJOINED'),
    ('ON_LEAVE'),
    ('REINSTATED'),
    ('RETIRED');

-- 연차 규칙
INSERT INTO day_off (type, amount)
VALUES
    ('FIRST_HALF_DAY_OFF', 0.5),
    ('SECOND_HALF_DAY_OFF', 0.5),
    ('NORMAL_DAY_OFF' ,   1),
    ('SPECIAL_DAY_OFF',   0);

-- 직원
INSERT INTO employee (position_id, department_id, status_id, name, email, password, hire_date, day_off_remains, role, phone, birthdate)
VALUES
    (1, 1, 1, '테스트유저1', 'testuser1@email.com', 'test1234', '2023-03-02', 15, 'USER', '010-1234-5678', '1996-07-30');
