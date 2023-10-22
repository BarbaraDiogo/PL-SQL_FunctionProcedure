CREATE OR REPLACE PROCEDURE Aumento_OU_Desconto_Individual(codItem IN NUMBER, porcentagem IN NUMBER) IS
BEGIN
  UPDATE Produto
  SET PrecoQuilo = PrecoQuilo * (1 + porcentagem / 100)
  WHERE CodP = codItem;
  COMMIT;
END;
/

-- Para aplicar um desconto de 7% a um produto específico com o código 326:
EXEC Aumento_OU_Desconto_Individual(326, -7);