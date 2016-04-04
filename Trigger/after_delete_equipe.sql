DELIMITER @
CREATE TRIGGER after_delete_equipe AFTER DELETE
ON equipe FOR EACH ROW 
BEGIN
	DELETE FROM candidat
	WHERE candidat.id_cand = OLD.id_candE;
END ;
@
DELIMITER ;
