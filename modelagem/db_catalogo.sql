CREATE SCHEMA IF NOT EXISTS db_catalogo DEFAULT CHARACTER SET utf8 ;
USE db_catalogo;

-- -----------------------------------------------------
-- Table empresa
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS empresa (
  idempresa INT NOT NULL AUTO_INCREMENT,
  nome_emp VARCHAR(100) NULL,
  cnpj_cpf VARCHAR(45) NULL,
  razao_social VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  status_emp VARCHAR(45) NULL,
  data_cadastro_emp TIMESTAMP NULL,
  PRIMARY KEY (idempresa));


-- -----------------------------------------------------
-- Table usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuario (
  idusuario INT NOT NULL AUTO_INCREMENT,
  nome_user VARCHAR(45) NULL,
  email_user VARCHAR(45) NULL,
  senha_user VARCHAR(45) NULL,
  nivel_user VARCHAR(45) NULL,
  status_user VARCHAR(45) NULL,
  data_cadastro_user TIMESTAMP NULL,
  empresa_idempresa INT NOT NULL,
  PRIMARY KEY (idusuario),
    FOREIGN KEY (empresa_idempresa)
    REFERENCES empresa (idempresa));


-- -----------------------------------------------------
-- Table produto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS produto (
  idproduto INT NOT NULL AUTO_INCREMENT,
  nome_prod VARCHAR(45) NULL,
  quantidade_prod INT NULL,
  foto_prod VARCHAR(45) NULL,
  valor_prod FLOAT NULL,
  status_prod VARCHAR(45) NULL,
  data_cadastro_prod TIMESTAMP NULL,
  empresa_idempresa INT NOT NULL,
  PRIMARY KEY (idproduto),
    FOREIGN KEY (empresa_idempresa)
    REFERENCES empresa (idempresa)
    );
