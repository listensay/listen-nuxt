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

 Date: 11/05/2024 10:46:41
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
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('3c02da8b-7e83-488b-bdd3-e022f0d83b6f', 'fda04912f39a46a9db85d266d6381d9c01b13da08dab398714099011946f29ac', '2024-05-10 03:36:44.294', '20240510033644_added_like', NULL, NULL, '2024-05-10 03:36:44.277', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('55f617cf-3f59-4f63-a613-22ddc9021e52', 'd18302be51cbb5defab3e1ca55143b517fd0fcd125d641e38b0e848f805755e9', '2024-05-07 02:16:02.940', '20240502042322_', NULL, NULL, '2024-05-07 02:16:02.919', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('a6473cf9-7486-44b7-a1b5-bef82ec4dd93', 'f7ee1d69069c318a0cb0c0eebad7571c0fe99cd24fb509764bda1b6baa184657', '2024-05-07 02:16:03.098', '20240507021603_article_photo', NULL, NULL, '2024-05-07 02:16:03.092', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('c04900bb-0df9-425a-9fdf-1dcf346a51b1', '05f089b2aa31f84b83c9235efe56ee0a44ec1f5d9d6f680904350661cea31dd5', '2024-05-07 02:16:02.918', '20240502025901_init', NULL, NULL, '2024-05-07 02:16:02.873', 1);
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES ('fb2eef2c-8ac3-4a65-bf95-1a273bc6c9b0', '688c04a263af6316b4226351f0d546aa4866497afc0983f6d084da4d660cb7f2', '2024-05-07 02:16:02.950', '20240502082050_role', NULL, NULL, '2024-05-07 02:16:02.940', 1);
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
  `photos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likeCount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Article_authorId_fkey` (`authorId`),
  CONSTRAINT `Article_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `User` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Article
-- ----------------------------
BEGIN;
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (6, NULL, 'asdasd', NULL, NULL, '', NULL, 2, '2024-05-08 03:22:23.972', '2024-05-10 03:50:49.365', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (7, NULL, 'asdasdfffff', NULL, NULL, '', NULL, 2, '2024-05-08 03:23:02.153', '2024-05-08 03:23:02.153', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (8, NULL, 'dsad', NULL, NULL, '', NULL, 2, '2024-05-08 03:33:41.618', '2024-05-08 03:33:41.618', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (9, NULL, 'sdfdsf', NULL, NULL, '', NULL, 2, '2024-05-08 03:35:14.270', '2024-05-08 03:35:14.270', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (10, NULL, 'sdfdsf', NULL, NULL, '', NULL, 2, '2024-05-08 03:36:30.725', '2024-05-08 03:36:30.725', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (11, NULL, 'jo', NULL, NULL, '', NULL, 2, '2024-05-08 03:37:03.925', '2024-05-08 03:37:03.925', '', NULL);
INSERT INTO `Article` (`id`, `title`, `content`, `keywords`, `description`, `location`, `views`, `authorId`, `createdAt`, `updatedAt`, `photos`, `likeCount`) VALUES (12, NULL, '23', NULL, NULL, '', NULL, 6, '2024-05-11 02:36:02.750', '2024-05-11 02:36:02.750', '', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (1, 'milk2', NULL, NULL, 'milk2', '$2a$10$Dz.2wXNu4zs4YeexFRfciOKzbgc7GnFw9uW5EtAHnKM8dY6ttW062', 'milk2@gamil.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-07 06:15:37.538', '2024-05-07 06:15:37.538', 'ACTIVE', 'USER');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (2, '听的说', '我是描述', NULL, 'milk', '$2a$10$KZdRZKpfG2LRpyf7jQEa4Oecd9HaNbcdrRDGlxuRfJfU22iTvgfmu', 'odr233@gmail.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-07 06:18:18.399', '2024-05-07 06:18:18.399', 'ACTIVE', 'ADMIN');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (3, 'odr233', NULL, NULL, 'milk3', '$2a$10$.Jrw1UU2dhTyFMG1Xr9CwuZkC2I5XfLjMwrpr79/36T3MGkoYdLDi', 'odr2333@gmail.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-07 07:16:59.287', '2024-05-07 07:16:59.287', 'ACTIVE', 'USER');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (4, 'milk4', NULL, NULL, 'milk4', '$2a$10$v8LB5El04ynw9wpWFQ0Ozemv44DwDsjS68ESW/PyX1HKJQoPA66k.', 'milk4@gmail.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-07 07:17:23.095', '2024-05-07 07:17:23.095', 'ACTIVE', 'USER');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (5, 'milk5', NULL, NULL, 'milk5', '$2a$10$CsdUwyG1D3/6CxJNOYtAOelsuAAyNqILkgCKoAWlcN7/NUVnItUua', 'milk5@gmail.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-07 07:18:52.795', '2024-05-07 07:18:52.795', 'ACTIVE', 'USER');
INSERT INTO `User` (`id`, `nickname`, `description`, `bio`, `username`, `password`, `email`, `avatar`, `createdAt`, `updatedAt`, `status`, `role`) VALUES (6, '管理员', NULL, NULL, 'admin', '$2a$10$6FQ868uRMlHz.M9OgvgYnu53n/IaO6Nkk5pZ1/1KdJpTXRziskq1i', '123456@qq.com', 'https://avatars.githubusercontent.com/u/11685308?v=4', '2024-05-11 02:31:39.487', '2024-05-11 02:31:39.487', 'ACTIVE', 'USER');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
