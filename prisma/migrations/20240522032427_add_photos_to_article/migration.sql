/*
  Warnings:

  - You are about to drop the column `articleId` on the `images` table. All the data in the column will be lost.
  - Added the required column `photos` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `categoryId` to the `images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `images` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `images` DROP FOREIGN KEY `images_articleId_fkey`;

-- AlterTable
ALTER TABLE `Article` ADD COLUMN `photos` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `images` DROP COLUMN `articleId`,
    ADD COLUMN `categoryId` INTEGER NOT NULL,
    ADD COLUMN `name` VARCHAR(191) NOT NULL;
