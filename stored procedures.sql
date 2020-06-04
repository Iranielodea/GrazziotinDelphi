create or alter procedure SP_ITEMORDEM_AJUST_CAPACIDADE
as
declare variable v_capacidade varchar(10);
declare variable v_controle INTEGER;
declare variable v_codmarca INTEGER;
declare variable v_codCapacidade INTEGER;
begin
  FOR
    SELECT
      ext.capacidade,
      ext.controle,
      ext.codmarca
    FROM tiordem ext
      WHERE ext.codcapacidade is null
    INTO :v_capacidade, :v_controle, :v_codmarca
  DO
  BEGIN
    SELECT FIRST 1
      CAPACIDADE.codcapacidade
    FROM CAPACIDADE
      WHERE CAPACIDADE.desccapacidade = :v_capacidade
    ORDER BY CAPACIDADE.codcapacidade
    INTO :v_codcapacidade;


    if (:v_codcapacidade IS NOT NULL) then
    BEGIN
      UPDATE tiordem ext SET ext.codcapacidade = :v_codcapacidade
        WHERE ext.controle = :v_controle;
    END
  END
end;

create or alter procedure SP_CLIEXTINTOR_AJUST_CAPACIDADE
as
declare variable v_capacidade varchar(10);
declare variable v_controle INTEGER;
declare variable v_codmarca INTEGER;
declare variable v_codCapacidade INTEGER;
begin
  FOR
    SELECT
      ext.capacidade,
      ext.controle,
      ext.codmarca
    FROM tcliext ext
      WHERE ext.codcapacidade is null
    INTO :v_capacidade, :v_controle, :v_codmarca
  DO
  BEGIN
    SELECT FIRST 1
      CAPACIDADE.codcapacidade
    FROM CAPACIDADE
      WHERE CAPACIDADE.desccapacidade = :v_capacidade
    ORDER BY CAPACIDADE.codcapacidade
    INTO :v_codcapacidade;


    if (:v_codcapacidade IS NOT NULL) then
    BEGIN
      UPDATE tcliext ext SET ext.codcapacidade = :v_codcapacidade
        WHERE ext.controle = :v_controle;
    END
  END

end;

