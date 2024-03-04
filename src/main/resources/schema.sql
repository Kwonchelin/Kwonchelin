-- Menu_image 테이블 삭제
DROP TABLE IF EXISTS `Menu_image`;

-- Review_image 테이블 삭제
DROP TABLE IF EXISTS `Review_image`;

-- Store_image 테이블 삭제
DROP TABLE IF EXISTS `Store_image`;

-- Review 테이블 삭제
DROP TABLE IF EXISTS `Review`;

-- Dib 테이블 삭제
DROP TABLE IF EXISTS `Dib`;

-- Member 테이블 삭제
DROP TABLE IF EXISTS `Member`;

-- Menu 테이블 삭제
DROP TABLE IF EXISTS `Menu`;

-- Store 테이블 삭제
DROP TABLE IF EXISTS `Store`;

-- Store 테이블 생성
CREATE TABLE IF NOT EXISTS `Store` (
    `store_id` BIGINT(20) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `category` VARCHAR(20) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `store_picture_url` TEXT NULL,
    `phone` VARCHAR(20) NOT NULL,
    `content` VARCHAR(255) NULL,
    `rating` DECIMAL(2,1) NULL,
    `dibs_count` INT(11) NULL,
    `review_count` INT(11) NULL,
    `operation_hours` VARCHAR(255) NOT NULL,
    `closed_days` VARCHAR(255) NOT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`store_id`)
);

-- Member 테이블 생성
CREATE TABLE IF NOT EXISTS `Member` (
    `member_id` BIGINT(20) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `nickname` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(11) NOT NULL,
    `role` VARCHAR(100) NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`member_id`)
);

-- Dib 테이블 생성
CREATE TABLE IF NOT EXISTS `Dib` (
    `dib_id` BIGINT(20) NOT NULL,
    `member_id` BIGINT(20) NOT NULL,
    `store_id` BIGINT(20) NOT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`dibs_id`, `user_id`, `store_id`),
    FOREIGN KEY (`member_id`) REFERENCES `Member` (`member_id`),
    FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`)
);

-- Review 테이블 생성
CREATE TABLE IF NOT EXISTS `Review` (
    `review_id` BIGINT(20) NOT NULL,
    `member_id` BIGINT(20) NOT NULL,
    `store_id` BIGINT(20) NOT NULL,
    `menu_id` BIGINT(20) NOT NULL,
    `rating` INT(1) NOT NULL,
    `content` VARCHAR(255) NULL,
    `review_picture_url` TEXT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`review_id`, `member_id`, `store_id`, `menu_id`),
    FOREIGN KEY (`member_id`) REFERENCES `Member` (`member_id`),
    FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`),
    FOREIGN KEY (`menu_id`) REFERENCES `Menu` (`menu_id`)
);

-- Store_image 테이블 생성
CREATE TABLE IF NOT EXISTS `Store_image` (
    `store_image_id` BIGINT(20) NOT NULL,
    `store_id` BIGINT(20) NOT NULL,
    `store_picture_url` TEXT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`store_image_id`, `store_id`),
    FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`)
);

-- Menu 테이블 생성
CREATE TABLE IF NOT EXISTS `Menu` (
    `menu_id` BIGINT(20) NOT NULL,
    `store_id` BIGINT(20) NOT NULL,
    `category` VARCHAR(100) NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` INT(11) NOT NULL,
    `menu_picture_url` TEXT NULL,
    `popularity` TINYINT(1) NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`menu_id`, `store_id`),
    FOREIGN KEY (`store_id`) REFERENCES `Store` (`store_id`)
);

-- Menu_image 테이블 생성
CREATE TABLE IF NOT EXISTS `Menu_image` (
    `menu_image_id` BIGINT(20) NOT NULL,
    `menu_id` BIGINT(20) NOT NULL,
    `menu_picture_url` TEXT NOT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`menu_image_id`, `menu_id`),
    FOREIGN KEY (`menu_id`) REFERENCES `Menu` (`menu_id`)
);

-- Review_image 테이블 생성
CREATE TABLE IF NOT EXISTS `Review_image` (
    `review_image_id` BIGINT(20) NOT NULL,
    `review_id` BIGINT(20) NOT NULL,
    `review_picture_url` TEXT NULL,
    `created_date` TIMESTAMP NULL,
    `modified_date` TIMESTAMP NULL,
    `status` VARCHAR(255) NULL,
    PRIMARY KEY (`review_image_id`, `review_id`),
    FOREIGN KEY (`review_id`) REFERENCES `Review` (`review_id`)
);