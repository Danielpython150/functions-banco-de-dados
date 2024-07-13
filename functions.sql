CREATE FUNCTION ContarClientesPorDia(data DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    
    SELECT COUNT(*)
    INTO totalClientes
    FROM clientes
    WHERE DATE(data_cadastro) = data;
    
    RETURN totalClientes;
END;

SELECT ContarClientesPorDia('2024-07-13');

