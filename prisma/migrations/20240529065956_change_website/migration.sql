/*
  Warnings:

  - You are about to drop the column `name` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `value` on the `Website` table. All the data in the column will be lost.
  - Added the required column `description` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `favicon` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keywords` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `likeCount` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `logo` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `Website` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Website` DROP COLUMN `name`,
    DROP COLUMN `value`,
    ADD COLUMN `description` VARCHAR(191) NOT NULL,
    ADD COLUMN `favicon` VARCHAR(191) NOT NULL,
    ADD COLUMN `keywords` VARCHAR(191) NOT NULL,
    ADD COLUMN `likeCount` INTEGER NOT NULL,
    ADD COLUMN `logo` VARCHAR(191) NOT NULL,
    ADD COLUMN `title` VARCHAR(191) NOT NULL;
