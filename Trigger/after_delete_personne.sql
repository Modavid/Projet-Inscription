DELIMITER @
CREATE TRIGGER after_delete_personne AFTER DELETE
ON personne FOR EACH ROW 
BEGIN
	DELETE FROM candidat
	WHERE candidat.id_cand = OLD.id_candP;
END ;
@
DELIMITER ;
