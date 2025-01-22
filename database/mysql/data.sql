INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) 
VALUES (1, 'user', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) 
VALUES (2, 'moderator', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) 
VALUES (3, 'admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) 
VALUES (1, 'user01', 'user01@gmail.com', '$2b$08$RhCAKf1eYKEGSKPEWpIrYOCum3ZQyG.xkEayEne3V6ySy/I2xIbVO', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`)
VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);