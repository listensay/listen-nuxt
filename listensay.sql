/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : listensay

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 29/05/2024 15:36:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _prisma_migrations
-- ----------------------------
DROP TABLE IF EXISTS `_prisma_migrations`;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of _prisma_migrations
-- ----------------------------
BEGIN;
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('0fc13641-e0b2-4bcb-8eaa-3057fcc73047', '2b70fb7ca51ed1e224420b2c87fffdf1e9ac78d6ccb1ce923b423e701d6eb292', '2024-05-29 06:43:28.765', '20240529064328_add_website', NULL, NULL, '2024-05-29 06:43:28.760', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('2f8c2e71-527a-4b78-8096-18ab2e8fb9e2', '0ee95200c6ef087a0699fd0597ee8e67662e9d4075a5940cc90ec10ebda4de4e', '2024-05-22 02:35:23.007', '20240522023522_added_images', NULL, NULL, '2024-05-22 02:35:22.997', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('455d0d60-4c26-4fee-bc5c-70cbc3cc14ec', 'fda04912f39a46a9db85d266d6381d9c01b13da08dab398714099011946f29ac', '2024-05-22 02:35:22.817', '20240510033644_added_like', NULL, NULL, '2024-05-22 02:35:22.800', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('48e642bb-f93b-48d7-8461-1daa6b0da9da', '47730f10a91613a268dfd3fc82f9d78ac7a140b9667b3e2245b4bac0f501043f', '2024-05-29 06:59:56.744', '20240529065956_change_website', NULL, NULL, '2024-05-29 06:59:56.741', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('5efe3a44-064a-40cd-8502-021ac32d3d70', '688c04a263af6316b4226351f0d546aa4866497afc0983f6d084da4d660cb7f2', '2024-05-22 02:35:22.795', '20240502082050_role', NULL, NULL, '2024-05-22 02:35:22.784', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('5fe1472f-16ed-409e-90bf-6983a34d6576', '25e1ef3e7eaa8de5873cb7f4586a442899ab706018360bc98133fa666789430c', '2024-05-29 06:43:28.500', '20240528023845_change_images', NULL, NULL, '2024-05-29 06:43:28.488', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('67f65a27-7724-45ce-9785-19a0aa220bfe', '7dc2b859f57e3d9afa85e6280e094a19a63e38984fba768855ecc4f3b94a3b78', '2024-05-29 06:49:36.089', '20240529064936_change_website', NULL, NULL, '2024-05-29 06:49:36.086', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('772b2678-7b50-4b0d-8135-b92c0193fcba', '540f8632760fb9e5ae968e5411772d9dd90cd2da47a13573719080ec2f8fc133', '2024-05-22 03:24:27.952', '20240522032427_add_photos_to_article', NULL, NULL, '2024-05-22 03:24:27.941', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('a10727d6-85bb-4b15-a377-f804957e005b', 'd18302be51cbb5defab3e1ca55143b517fd0fcd125d641e38b0e848f805755e9', '2024-05-22 02:35:22.784', '20240502042322_', NULL, NULL, '2024-05-22 02:35:22.765', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('bca17438-cde6-403a-bb7c-ceaeb9877781', 'f7ee1d69069c318a0cb0c0eebad7571c0fe99cd24fb509764bda1b6baa184657', '2024-05-22 02:35:22.800', '20240507021603_article_photo', NULL, NULL, '2024-05-22 02:35:22.795', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('fb891be9-6df3-4a75-9ed2-1367c28471d3', '05f089b2aa31f84b83c9235efe56ee0a44ec1f5d9d6f680904350661cea31dd5', '2024-05-22 02:35:22.765', '20240502025901_init', NULL, NULL, '2024-05-22 02:35:22.726', 1);
COMMIT;

-- ----------------------------
-- Table structure for Article
-- ----------------------------
DROP TABLE IF EXISTS `Article`;
CREATE TABLE `Article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int DEFAULT NULL,
  `authorId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `likeCount` int DEFAULT NULL,
  `photos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Article_authorId_fkey` (`authorId`),
  CONSTRAINT `Article_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Article
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Comment
-- ----------------------------
DROP TABLE IF EXISTS `Comment`;
CREATE TABLE `Comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `articleId` int NOT NULL,
  `authorId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Comment_articleId_fkey` (`articleId`),
  KEY `Comment_authorId_fkey` (`authorId`),
  CONSTRAINT `Comment_articleId_fkey` FOREIGN KEY (`articleId`) REFERENCES `Article` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Comment_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Images
-- ----------------------------
DROP TABLE IF EXISTS `Images`;
CREATE TABLE `Images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageCategoryId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Images_imageCategoryId_fkey` (`imageCategoryId`),
  CONSTRAINT `Images_imageCategoryId_fkey` FOREIGN KEY (`imageCategoryId`) REFERENCES `ImagesCategory` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Images
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ImagesCategory
-- ----------------------------
DROP TABLE IF EXISTS `ImagesCategory`;
CREATE TABLE `ImagesCategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ImagesCategory_name_key` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ImagesCategory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for Like
-- ----------------------------
DROP TABLE IF EXISTS `Like`;
CREATE TABLE `Like` (
  `userId` int NOT NULL,
  `articleId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`userId`,`articleId`),
  KEY `Like_articleId_fkey` (`articleId`),
  CONSTRAINT `Like_articleId_fkey` FOREIGN KEY (`articleId`) REFERENCES `Article` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Like_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Like
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_username_key` (`username`),
  UNIQUE KEY `User_email_key` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (1, '听说', '不要倒在黎明前的黑夜里\n', NULL, 'milk', '$2a$10$r7u6uySZD.N3qzHrPR4YW.j7LCuGwr.HCwAJSZJNLjfIKWiNOEk02', 'odr233@gmail.com', '', '2024-05-29 06:10:18.395', '2024-05-29 06:10:18.395', 'ACTIVE', 'USER');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (2, '', NULL, NULL, '', '', '', NULL, '2024-05-29 15:33:22.186', '0000-00-00 00:00:00.000', 'ACTIVE', 'USER');
COMMIT;

-- ----------------------------
-- Table structure for Website
-- ----------------------------
DROP TABLE IF EXISTS `Website`;
CREATE TABLE `Website` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likeCount` int NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Website
-- ----------------------------
BEGIN;
INSERT INTO `Website` (`id`, `description`, `favicon`, `keywords`, `likeCount`, `logo`, `title`) VALUES (1, '这里是听说的个人空间啦', '', '听说的空间,听说,Emlog,Wordpress,Typecho', 10, '', '听说的个人空间');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
