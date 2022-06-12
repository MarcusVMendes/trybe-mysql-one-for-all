DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW

BEGIN
DELETE FROM SpotifyClone.reproduction_history
WHERE reproduction_history.user_id = old.user_id;
DELETE FROM SpotifyClone.follows
WHERE follows.user_id = old.user_id;
END $$

DELIMITER ;
