DROP TABLE IF EXISTS scr_modalidades_faixas;
create table scr_modalidades_faixas as SELECT chave_cpf
,data_consulta_dado_bacen
,SUM(valor_credito_vencer_ate_30_dia) AS valor_credito_vencer_ate_30_dia
,SUM(valor_credito_vencer_31_60_dia) AS valor_credito_vencer_31_60_dia
,SUM(valor_credito_vencer_61_90_dia) AS valor_credito_vencer_61_90_dia
,SUM(valor_credito_vencer_acima_90_dia) AS valor_credito_vencer_acima_90_dia
,SUM(valor_credito_vencido_15_30_dia) AS valor_credito_vencido_15_30_dia
,SUM(valor_credito_vencido_31_60_dia) AS valor_credito_vencido_31_60_dia
,SUM(valor_credito_vencido_61_90_dia) AS valor_credito_vencido_61_90_dia
,SUM(valor_credito_vencido_acima_90_dia) AS valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'credito_pessoal' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS credito_pessoal_valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS consignado_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS consignado_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS consignado_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS consignado_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS consignado_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS consignado_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS consignado_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'consignado' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS consignado_valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS cheque_especial_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS cheque_especial_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS cheque_especial_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS cheque_especial_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS cheque_especial_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS cheque_especial_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS cheque_especial_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'cheque_especial' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS cheque_especial_valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'cartao_revolver' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS cartao_revolver_valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'cartao_transactor' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS cartao_transactor_valor_credito_vencido_acima_90_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencer_ate_30_dia ELSE 0 END) AS outros_valor_credito_vencer_ate_30_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencer_31_60_dia ELSE 0 END) AS outros_valor_credito_vencer_31_60_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencer_61_90_dia ELSE 0 END) AS outros_valor_credito_vencer_61_90_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencer_acima_90_dia ELSE 0 END) AS outros_valor_credito_vencer_acima_90_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencido_15_30_dia ELSE 0 END) AS outros_valor_credito_vencido_15_30_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencido_31_60_dia ELSE 0 END) AS outros_valor_credito_vencido_31_60_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencido_61_90_dia ELSE 0 END) AS outros_valor_credito_vencido_61_90_dia
,SUM(CASE WHEN descricao = 'outros' THEN valor_credito_vencido_acima_90_dia ELSE 0 END) AS outros_valor_credito_vencido_acima_90_dia
 FROM scr_modalidades GROUP BY chave_cpf, data_consulta_dado_bacen;