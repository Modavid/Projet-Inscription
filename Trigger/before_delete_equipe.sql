DELIMITER @
CREATE TRIGGER before_delete_equipe BEFORE DELETE
ON equipe FOR EACH ROW 
BEGIN
	DELETE FROM inscrire
	WHERE inscrire.id_cand = OLD.id_candE;
END ;
@
DELIMITER ;
