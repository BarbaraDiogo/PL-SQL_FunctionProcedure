CREATE OR REPLACE PROCEDURE Aumento_OU_Desconto(porcentagem IN NUMBER) IS
BEGIN
  UPDATE Produto
  SET PrecoQuilo = PrecoQuilo * (1 + porcentagem / 100);
  COMMIT;
END;
/

-- Aplicanco um aumento de 10% em todos os produtos
EXEC Aumento_OU_Desconto(10);