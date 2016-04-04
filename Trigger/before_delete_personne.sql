DELIMITER @
CREATE TRIGGER before_delete_personne BEFORE DELETE
ON personne FOR EACH ROW 
BEGIN
	DELETE FROM inscrire
	WHERE inscrire.id_cand = OLD.id_candP;
END ;
@
DELIMITER ;
