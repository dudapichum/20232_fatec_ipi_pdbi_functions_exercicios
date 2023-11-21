-- 1.2 Função fn_transferir:
-- CREATE OR REPLACE FUNCTION fn_transferir(
--     IN p_cod_cliente_remetente INT,
--     IN p_cod_conta_remetente INT,
--     IN p_cod_cliente_destinatario INT,
--     IN p_cod_conta_destinatario INT,
--     IN p_valor_transferencia NUMERIC (10, 2)
-- ) RETURNS BOOLEAN LANGUAGE plpgsql
-- AS $$
-- DECLARE
--     v_saldo_remetente NUMERIC (10, 2);
--     v_saldo_destinatario NUMERIC (10, 2);
-- BEGIN
--     SELECT saldo INTO v_saldo_remetente
--     FROM tb_conta
--     WHERE cod_cliente = p_cod_cliente_remetente
--     AND cod_conta = p_cod_conta_remetente;

--     SELECT saldo INTO v_saldo_destinatario
--     FROM tb_conta
--     WHERE cod_cliente = p_cod_cliente_destinatario
--     AND cod_conta = p_cod_conta_destinatario;

--     IF v_saldo_remetente >= p_valor_transferencia AND p_valor_transferencia > 0 THEN
--         UPDATE tb_conta
--         SET saldo = saldo - p_valor_transferencia
--         WHERE cod_cliente = p_cod_cliente_remetente
--         AND cod_conta = p_cod_conta_remetente;

--         UPDATE tb_conta
--         SET saldo = saldo + p_valor_transferencia
--         WHERE cod_cliente = p_cod_cliente_destinatario
--         AND cod_conta = p_cod_conta_destinatario;

--         RETURN TRUE; 
--     ELSE
--         RETURN FALSE; 
--     END IF;
-- EXCEPTION WHEN OTHERS THEN
--     RETURN FALSE;
-- END;
-- $$

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


