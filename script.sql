-- EXERCICIO 1
-- 1.1 Função fn_consultar_saldo:

-- CREATE OR REPLACE FUNCTION fn_consultar_saldo(
--     IN p_cod_cliente INT,
--     IN p_cod_conta INT
-- ) RETURNS NUMERIC (10, 2) LANGUAGE plpgsql
-- AS $$
-- DECLARE
--     v_saldo NUMERIC (10, 2);
-- BEGIN
--     SELECT saldo INTO v_saldo
--     FROM tb_conta c
--     WHERE c.cod_cliente = p_cod_cliente
--     AND c.cod_conta = p_cod_conta;

--     IF v_saldo IS NULL THEN
--         RETURN 0;
--     ELSE
--         RETURN v_saldo; 
--     END IF;
-- EXCEPTION WHEN OTHERS THEN
--     RETURN FALSE; 
-- END;
-- $$


