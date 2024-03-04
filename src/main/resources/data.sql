
-- member
INSERT INTO `Member` (
    `created_date`,
    `modified_date`,
    `password`,
    `email`,
    `nickname`,
    `phone`,
    `role`,
    `status`
) VALUES
(NOW(), NOW(), 'pass01', 'user01@naver.com', 'User01', '111-1111-1111', 'Customer', 'Active'),
(NOW(), NOW(), 'pass02', 'user02@naver.com', 'User02', '222-2222-2222', 'Customer', 'Active'),
(NOW(), NOW(), 'pass03', 'user03@naver.com', 'User03', '333-3333-3333', 'Customer', 'Active'),
(NOW(), NOW(), 'pass04', 'user04@naver.com', 'User04', '444-4444-4444', 'Customer', 'Active'),
(NOW(), NOW(), 'pass05', 'user05@naver.com', 'User05', '555-5555-5555', 'Customer', 'Active');

-- store
INSERT INTO `Store` (
    `dibs_count`,
    `rating_aver`,
    `review_count`,
    `created_date`,
    `modified_date`,
    `storeId`,
    `address`,
    `category`,
    `closed_days`,
    `content`,
    `name`,
    `operation_hours`,
    `phone`,
    `status`,
    `storePictureUrl`
) VALUES
(10, 4.5, 20, NOW(), NOW(), NULL, '123 Main St', 'Restaurant', 'Saturday', 'Good food place', 'Awesome Restaurant', '09:00 AM - 10:00 PM', '123-456-7890', 'Active', 'store_image1_url'),
(5, 3.8, 15, NOW(), NOW(), NULL, '456 Oak Ave', 'Cafe', 'Sunday', 'Cozy coffee spot', 'Sunset Cafe', '08:00 AM - 08:00 PM', '987-654-3210', 'Active', 'store_image2_url'),
(8, 4.2, 18, NOW(), NOW(), NULL, '789 Pine Blvd', 'Bar', 'Monday', 'Great drinks and music', 'Night Owl Bar', '06:00 PM - 02:00 AM', '555-123-4567', 'Active', 'store_image3_url'),
(15, 4.7, 25, NOW(), NOW(), NULL, '321 Elm St', 'Bakery', 'Wednesday', 'Freshly baked goods', 'Sweet Delights Bakery', '07:00 AM - 07:00 PM', '789-456-1230', 'Active', 'store_image4_url'),
(12, 4.0, 22, NOW(), NOW(), NULL, '555 Maple Ave', 'Diner', 'Thursday', 'Classic diner experience', 'Maple Diner', '24 hours', '123-789-4560', 'Active', 'store_image5_url');

-- dib
INSERT INTO `Dib` (
    `created_date`,
    `dib_id`,
    `member_id`,
    `modified_date`,
    `store_id`,
    `status`
) VALUES
(NOW(), NULL, 1, NOW(), 1, 'Active'),
(NOW(), NULL, 2, NOW(), 2, 'Active'),
(NOW(), NULL, 3, NOW(), 3, 'Active'),
(NOW(), NULL, 4, NOW(), 4, 'Active'),
(NOW(), NULL, 5, NOW(), 5, 'Active');

-- menu
INSERT INTO `Menu` (
    `popularity`,
    `price`,
    `created_date`,
    `menu_id`,
    `modified_date`,
    `store_id`,
    `category`,
    `menu_picture_url`,
    `name`,
    `status`
) VALUES
(10, 15, NOW(), NULL, NOW(), 1, 'Category1', 'menu1_picture_url', 'Menu1', 'Active'),
(8, 20, NOW(), NULL, NOW(), 2, 'Category2', 'menu2_picture_url', 'Menu2', 'Active'),
(12, 18, NOW(), NULL, NOW(), 3, 'Category1', 'menu3_picture_url', 'Menu3', 'Active'),
(15, 25, NOW(), NULL, NOW(), 4, 'Category3', 'menu4_picture_url', 'Menu4', 'Active'),
(7, 12, NOW(), NULL, NOW(), 5, 'Category2', 'menu5_picture_url', 'Menu5', 'Active');

-- review
INSERT INTO `Review` (
    `rating`,
    `created_date`,
    `member_id`,
    `menu_id`,
    `modified_date`,
    `review_id`,
    `store_id`,
    `content`,
    `review_picture_url`,
    `status`
) VALUES
(4, NOW(), 1, 1, NOW(), NULL, 1, 'Good food!', 'review1_picture_url', 'Active'),
(3, NOW(), 2, 2, NOW(), NULL, 2, 'Average experience.', 'review2_picture_url', 'Active'),
(5, NOW(), 3, 3, NOW(), NULL, 3, 'Excellent service!', 'review3_picture_url', 'Active'),
(4, NOW(), 4, 4, NOW(), NULL, 4, 'Tasty menu items.', 'review4_picture_url', 'Active'),
(2, NOW(), 5, 5, NOW(), NULL, 5, 'Disappointing.', 'review5_picture_url', 'Active');

-- store_image
INSERT INTO `Store_image` (
    `created_date`,
    `modified_date`,
    `store_id`,
    `store_image_id`,
    `status`,
    `store_picture_url`
) VALUES
(NOW(), NOW(), 1, NULL, 'Active', 'store_image1_url'),
(NOW(), NOW(), 2, NULL, 'Active', 'store_image2_url'),
(NOW(), NOW(), 3, NULL, 'Active', 'store_image3_url'),
(NOW(), NOW(), 4, NULL, 'Active', 'store_image4_url'),
(NOW(), NOW(), 5, NULL, 'Active', 'store_image5_url');

-- menu image
INSERT INTO `Menu_image` (
    `created_date`,
    `menu_id`,
    `menu_image_id`,
    `modified_date`,
    `menu_picture_url`,
    `status`
) VALUES
(NOW(), 1, NULL, NOW(), 'menu_image1_url', 'Active'),
(NOW(), 2, NULL, NOW(), 'menu_image2_url', 'Active'),
(NOW(), 3, NULL, NOW(), 'menu_image3_url', 'Active'),
(NOW(), 4, NULL, NOW(), 'menu_image4_url', 'Active'),
(NOW(), 5, NULL, NOW(), 'menu_image5_url', 'Active');

-- review image
INSERT INTO `Review_image` (
    `created_date`,
    `modified_date`,
    `review_id`,
    `review_image_id`,
    `review_picture_url`,
    `status`
) VALUES
(NOW(), NOW(), 1, NULL, 'review_image1_url', 'Active'),
(NOW(), NOW(), 2, NULL, 'review_image2_url', 'Active'),
(NOW(), NOW(), 3, NULL, 'review_image3_url', 'Active'),
(NOW(), NOW(), 4, NULL, 'review_image4_url', 'Active'),
(NOW(), NOW(), 5, NULL, 'review_image5_url', 'Active');

