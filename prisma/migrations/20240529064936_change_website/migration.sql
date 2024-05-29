/*
  Warnings:

  - You are about to drop the column `description` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `favicon` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `keywords` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `likeCount` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `logo` on the `Website` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Website` table. All the data in the column will be lost.
  - Added the required column `name` to the `Website` table without a default value. This is not possible if the table is not empty.
  - Added the required column `value` to the `Website` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Website` DROP COLUMN `description`,
    DROP COLUMN `favicon`,
    DROP COLUMN `keywords`,
    DROP COLUMN `likeCount`,
    DROP COLUMN `logo`,
    DROP COLUMN `title`,
    ADD COLUMN `name` VARCHAR(191) NOT NULL,
    ADD COLUMN `value` VARCHAR(191) NOT NULL;
