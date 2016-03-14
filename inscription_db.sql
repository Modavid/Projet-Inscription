CREATE TABLE Personne(
        prenom_pers Varchar (25) ,
        email       Varchar (25) ,
        numcandidat Int NOT NULL ,
        PRIMARY KEY (numcandidat )
)ENGINE=InnoDB;

CREATE TABLE Equipe(
        nom_equipe  Varchar (25) ,
        numcandidat Int NOT NULL ,
        PRIMARY KEY (numcandidat )
)ENGINE=InnoDB;

CREATE TABLE Candidat(
        numcandidat Int NOT NULL ,
        PRIMARY KEY (numcandidat )
)ENGINE=InnoDB;

CREATE TABLE Competition(
        numcompet  Int NOT NULL ,
        nomcompet  Varchar (25) ,
        datecompet Date ,
        enEquipe   Bool ,
        PRIMARY KEY (numcompet )
)ENGINE=InnoDB;

CREATE TABLE S_inscrire(
        numcandidat Int NOT NULL ,
        numcompet   Int NOT NULL ,
        PRIMARY KEY (numcandidat ,numcompet )
)ENGINE=InnoDB;

CREATE TABLE Faire_partie(
        numcandidat          Int NOT NULL ,
        numcandidat_Candidat Int NOT NULL ,
        PRIMARY KEY (numcandidat ,numcandidat_Candidat )
)ENGINE=InnoDB;

ALTER TABLE Personne ADD CONSTRAINT FK_Personne_numcandidat FOREIGN KEY (numcandidat) REFERENCES Candidat(numcandidat);
ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_numcandidat FOREIGN KEY (numcandidat) REFERENCES Candidat(numcandidat);
ALTER TABLE S_inscrire ADD CONSTRAINT FK_S_inscrire_numcandidat FOREIGN KEY (numcandidat) REFERENCES Candidat(numcandidat);
ALTER TABLE S_inscrire ADD CONSTRAINT FK_S_inscrire_numcompet FOREIGN KEY (numcompet) REFERENCES Competition(numcompet);
ALTER TABLE Faire_partie ADD CONSTRAINT FK_Faire_partie_numcandidat FOREIGN KEY (numcandidat) REFERENCES Candidat(numcandidat);
ALTER TABLE Faire_partie ADD CONSTRAINT FK_Faire_partie_numcandidat_Candidat FOREIGN KEY (numcandidat_Candidat) REFERENCES Candidat(numcandidat);
