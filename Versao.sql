------- versao 00012 - 29/10/2019 - Atual
--------------------------------------------------------------------------------
-- versao 00003
UPDATE tmemp SET VERSAO = '00003';
--==
ALTER TABLE tresp ADD USAR_INSPECAO CHAR(1);
--==
UPDATE tresp SET USAR_INSPECAO = 'S';
--==
ALTER TABLE tpeca ADD USAR_INSPECAO CHAR(1);
--==
UPDATE tpeca SET USAR_INSPECAO = 'S';
--==
--------------------------------------------------------------------------------
-- versao 00004
UPDATE tmemp SET VERSAO = '00004';
--==
ALTER TABLE tiordem ADD DATA_INSPECAO DATE;
--==
ALTER TABLE tcliext ADD DATA_INSPECAO DATE;
--==
--------------------------------------------------------------------------------
-- versao 00005
UPDATE tmemp SET VERSAO = '00005';
--==
ALTER TABLE tmarca ADD CONSTRAINT UK_MARCA UNIQUE(codmarca);
--==
ALTER TABLE capacidade ADD codmarca DOUBLE PRECISION;
--==
ALTER TABLE capacidade ADD CONSTRAINT FK_CAPACIDADE_MARCA FOREIGN KEY(codmarca) REFERENCES tmarca(codmarca);
--==
UPDATE capacidade SET codmarca = 2 WHERE codmarca is null;
--==
--------------------------------------------------------------------------------
-- versao 00006
UPDATE tmemp SET VERSAO = '00006';
--==
create or alter procedure SP_CAPACIDADE_BUSCAR(
  IN_CAPACIDADE VARCHAR(10),
  in_codmarca INTEGER)

RETURNS (cap_extintora VARCHAR(30))
as
declare variable v_codcapacidade INTEGER;
declare variable v_capextintora VARCHAR(30);
begin
  SELECT
    FIRST 1
    C.codcapacidade,
    C.capacid_extintora
  FROM capacidade C
    WHERE c.desccapacidade = :in_capacidade
    AND c.codmarca = :in_codmarca
  INTO :v_codcapacidade, :v_capextintora;

  if (v_codcapacidade IS NULL) then
  BEGIN
    SELECT
      FIRST 1
      C.capacid_extintora
    FROM capacidade C
      WHERE c.desccapacidade = :in_capacidade
    INTO :v_capextintora;
  END
  cap_extintora = :v_capextintora;
  suspend;
end;
--==
--------------------------------------------------------------------------------
-- 17/03/2016
-- versao 00007
UPDATE tmemp SET VERSAO = '00007';
--==
CREATE INDEX TORDEM_IDX_CODPESSOA ON TORDEM (CODPESSOA);
--==
CREATE INDEX TORDEM_IDX_DATA ON TORDEM (DATAORDEM);
--==
CREATE INDEX TIORDEM_IDX_SERIE ON TIORDEM (SERIE);
--==
CREATE INDEX TCLIEXT_IDX_SELO ON TCLIEXT (SELO);
--==
--------------------------------------------------------------------------------
-- 23/05/2016
-- versao 00008
UPDATE tmemp SET VERSAO = '00008';
--==
ALTER TABLE tiordem ADD Vencto_Inspecao date;
--==
--------------------------------------------------------------------------------
-- 10/10/2016
-- versao 00009
UPDATE tmemp SET VERSAO = '00009';
--==
alter table tpeca add so_inspecao char(1)
--==
update tpeca set so_inspecao = usar_inspecao
--==
alter table tiordem add legenda char(1)
--==
update tiordem set legenda = 'A'
--==
--------------------------------------------------------------------------------
-- 10/03/2018
-- versao 00010
UPDATE tmemp SET VERSAO = '00010'
--==
INSERT INTO TPARAMETRO (sigla, descricao, param_string) VALUES ('ETIQ_GRANDE', 'NOME DA IMPRESSORA ETIQUETA GRANDE', 'NOME')
--==
INSERT INTO TPARAMETRO (sigla, descricao, param_string) VALUES ('ETIQ_PEQUENA', 'NOME DA IMPRESSORA ETIQUETA PEQUENA', 'NOME')
--==

--------------------------------------------------------------------------------
-- 06/10/2019
-- versao 00011
UPDATE tmemp SET VERSAO = '00011'
--==
alter table TPECA add Ativo char(1)
--==
update TPECA set ATIVO = 'S'
--==
--------------------------------------------------------------------------------
-- 29/10/2019
-- versao 00012
UPDATE tmemp SET VERSAO = '00012'
--==
alter table TMANUT add RETESTE char(1)
--==
update TMANUT set RETESTE = 'N'
--==
update TMANUT set RETESTE = 'S' WHERE CODMANUTENCAO = 3
--==