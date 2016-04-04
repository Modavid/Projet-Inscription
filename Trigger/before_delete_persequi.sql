DELIMITER @
CREATE TRIGGER before_delete_persequi BEFORE DELETE
ON inscrire FOR EACH ROW 
BEGIN
	DELETE FROM appartenir
	WHERE appartenir.id_candP = OLD.id_cand
	OR appartenir.id_candE = OLD.id_can d;
END ;
@
DELIMITER ;
