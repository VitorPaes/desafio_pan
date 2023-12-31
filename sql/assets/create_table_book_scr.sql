DROP TABLE IF EXISTS book_scr;
CREATE TABLE book_scr AS SELECT *
,credito_pessoal_valor_credito_vencer_ate_30_dia + credito_pessoal_valor_credito_vencer_31_60_dia AS credito_pessoal_valor_credito_vencer_ate_60_dia
,credito_pessoal_valor_credito_vencer_ate_30_dia + credito_pessoal_valor_credito_vencer_31_60_dia + credito_pessoal_valor_credito_vencer_61_90_dia AS credito_pessoal_valor_credito_vencer_ate_90_dia
,credito_pessoal_valor_credito_vencer_ate_30_dia + credito_pessoal_valor_credito_vencer_31_60_dia + credito_pessoal_valor_credito_vencer_61_90_dia + credito_pessoal_valor_credito_vencer_acima_90_dia AS credito_pessoal_valor_credito_vencer_ate_120_dia
,credito_pessoal_valor_credito_vencido_15_30_dia + credito_pessoal_valor_credito_vencido_31_60_dia AS credito_pessoal_valor_credito_vencido_ate_60_dia
,credito_pessoal_valor_credito_vencido_15_30_dia + credito_pessoal_valor_credito_vencido_31_60_dia + credito_pessoal_valor_credito_vencido_61_90_dia AS credito_pessoal_valor_credito_vencido_ate_90_dia
,credito_pessoal_valor_credito_vencido_15_30_dia + credito_pessoal_valor_credito_vencido_31_60_dia + credito_pessoal_valor_credito_vencido_61_90_dia + credito_pessoal_valor_credito_vencido_acima_90_dia AS credito_pessoal_valor_credito_vencido_ate_120_dia
,consignado_valor_credito_vencer_ate_30_dia + consignado_valor_credito_vencer_31_60_dia AS consignado_valor_credito_vencer_ate_60_dia
,consignado_valor_credito_vencer_ate_30_dia + consignado_valor_credito_vencer_31_60_dia + consignado_valor_credito_vencer_61_90_dia AS consignado_valor_credito_vencer_ate_90_dia
,consignado_valor_credito_vencer_ate_30_dia + consignado_valor_credito_vencer_31_60_dia + consignado_valor_credito_vencer_61_90_dia + consignado_valor_credito_vencer_acima_90_dia AS consignado_valor_credito_vencer_ate_120_dia
,consignado_valor_credito_vencido_15_30_dia + consignado_valor_credito_vencido_31_60_dia AS consignado_valor_credito_vencido_ate_60_dia
,consignado_valor_credito_vencido_15_30_dia + consignado_valor_credito_vencido_31_60_dia + consignado_valor_credito_vencido_61_90_dia AS consignado_valor_credito_vencido_ate_90_dia
,consignado_valor_credito_vencido_15_30_dia + consignado_valor_credito_vencido_31_60_dia + consignado_valor_credito_vencido_61_90_dia + consignado_valor_credito_vencido_acima_90_dia AS consignado_valor_credito_vencido_ate_120_dia
,cheque_especial_valor_credito_vencer_ate_30_dia + cheque_especial_valor_credito_vencer_31_60_dia AS cheque_especial_valor_credito_vencer_ate_60_dia
,cheque_especial_valor_credito_vencer_ate_30_dia + cheque_especial_valor_credito_vencer_31_60_dia + cheque_especial_valor_credito_vencer_61_90_dia AS cheque_especial_valor_credito_vencer_ate_90_dia
,cheque_especial_valor_credito_vencer_ate_30_dia + cheque_especial_valor_credito_vencer_31_60_dia + cheque_especial_valor_credito_vencer_61_90_dia + cheque_especial_valor_credito_vencer_acima_90_dia AS cheque_especial_valor_credito_vencer_ate_120_dia
,cheque_especial_valor_credito_vencido_15_30_dia + cheque_especial_valor_credito_vencido_31_60_dia AS cheque_especial_valor_credito_vencido_ate_60_dia
,cheque_especial_valor_credito_vencido_15_30_dia + cheque_especial_valor_credito_vencido_31_60_dia + cheque_especial_valor_credito_vencido_61_90_dia AS cheque_especial_valor_credito_vencido_ate_90_dia
,cheque_especial_valor_credito_vencido_15_30_dia + cheque_especial_valor_credito_vencido_31_60_dia + cheque_especial_valor_credito_vencido_61_90_dia + cheque_especial_valor_credito_vencido_acima_90_dia AS cheque_especial_valor_credito_vencido_ate_120_dia
,cartao_revolver_valor_credito_vencer_ate_30_dia + cartao_revolver_valor_credito_vencer_31_60_dia AS cartao_revolver_valor_credito_vencer_ate_60_dia
,cartao_revolver_valor_credito_vencer_ate_30_dia + cartao_revolver_valor_credito_vencer_31_60_dia + cartao_revolver_valor_credito_vencer_61_90_dia AS cartao_revolver_valor_credito_vencer_ate_90_dia
,cartao_revolver_valor_credito_vencer_ate_30_dia + cartao_revolver_valor_credito_vencer_31_60_dia + cartao_revolver_valor_credito_vencer_61_90_dia + cartao_revolver_valor_credito_vencer_acima_90_dia AS cartao_revolver_valor_credito_vencer_ate_120_dia
,cartao_revolver_valor_credito_vencido_15_30_dia + cartao_revolver_valor_credito_vencido_31_60_dia AS cartao_revolver_valor_credito_vencido_ate_60_dia
,cartao_revolver_valor_credito_vencido_15_30_dia + cartao_revolver_valor_credito_vencido_31_60_dia + cartao_revolver_valor_credito_vencido_61_90_dia AS cartao_revolver_valor_credito_vencido_ate_90_dia
,cartao_revolver_valor_credito_vencido_15_30_dia + cartao_revolver_valor_credito_vencido_31_60_dia + cartao_revolver_valor_credito_vencido_61_90_dia + cartao_revolver_valor_credito_vencido_acima_90_dia AS cartao_revolver_valor_credito_vencido_ate_120_dia
,cartao_transactor_valor_credito_vencer_ate_30_dia + cartao_transactor_valor_credito_vencer_31_60_dia AS cartao_transactor_valor_credito_vencer_ate_60_dia
,cartao_transactor_valor_credito_vencer_ate_30_dia + cartao_transactor_valor_credito_vencer_31_60_dia + cartao_transactor_valor_credito_vencer_61_90_dia AS cartao_transactor_valor_credito_vencer_ate_90_dia
,cartao_transactor_valor_credito_vencer_ate_30_dia + cartao_transactor_valor_credito_vencer_31_60_dia + cartao_transactor_valor_credito_vencer_61_90_dia + cartao_transactor_valor_credito_vencer_acima_90_dia AS cartao_transactor_valor_credito_vencer_ate_120_dia
,cartao_transactor_valor_credito_vencido_15_30_dia + cartao_transactor_valor_credito_vencido_31_60_dia AS cartao_transactor_valor_credito_vencido_ate_60_dia
,cartao_transactor_valor_credito_vencido_15_30_dia + cartao_transactor_valor_credito_vencido_31_60_dia + cartao_transactor_valor_credito_vencido_61_90_dia AS cartao_transactor_valor_credito_vencido_ate_90_dia
,cartao_transactor_valor_credito_vencido_15_30_dia + cartao_transactor_valor_credito_vencido_31_60_dia + cartao_transactor_valor_credito_vencido_61_90_dia + cartao_transactor_valor_credito_vencido_acima_90_dia AS cartao_transactor_valor_credito_vencido_ate_120_dia
,outros_valor_credito_vencer_ate_30_dia + outros_valor_credito_vencer_31_60_dia AS outros_valor_credito_vencer_ate_60_dia
,outros_valor_credito_vencer_ate_30_dia + outros_valor_credito_vencer_31_60_dia + outros_valor_credito_vencer_61_90_dia AS outros_valor_credito_vencer_ate_90_dia
,outros_valor_credito_vencer_ate_30_dia + outros_valor_credito_vencer_31_60_dia + outros_valor_credito_vencer_61_90_dia + outros_valor_credito_vencer_acima_90_dia AS outros_valor_credito_vencer_ate_120_dia
,outros_valor_credito_vencido_15_30_dia + outros_valor_credito_vencido_31_60_dia AS outros_valor_credito_vencido_ate_60_dia
,outros_valor_credito_vencido_15_30_dia + outros_valor_credito_vencido_31_60_dia + outros_valor_credito_vencido_61_90_dia AS outros_valor_credito_vencido_ate_90_dia
,outros_valor_credito_vencido_15_30_dia + outros_valor_credito_vencido_31_60_dia + outros_valor_credito_vencido_61_90_dia + outros_valor_credito_vencido_acima_90_dia AS outros_valor_credito_vencido_ate_120_dia
FROM scr_modalidades_faixas;