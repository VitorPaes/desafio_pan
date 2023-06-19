DROP TABLE IF EXISTS scr_modalidades;
CREATE TABLE scr_modalidades AS 
      SELECT 
            s.chave_cpf,
            s.data_consulta_dado_bacen,
            s.codigo_modalidade_operacao,
            m.descricao,
            s.valor_credito_vencer_ate_30_dia,
            s.valor_credito_vencer_31_60_dia,
            s.valor_credito_vencer_61_90_dia,
            s.valor_credito_vencer_acima_90_dia,
            s.valor_credito_vencido_15_30_dia,
            s.valor_credito_vencido_31_60_dia,
            s.valor_credito_vencido_61_90_dia,
            s.valor_credito_vencido_acima_90_dia
FROM 
    scr AS s
LEFT JOIN 
    modalidades AS m ON s.codigo_modalidade_operacao = m.modalidade;
