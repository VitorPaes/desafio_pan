# Modelo de Crédito SCR Dados

Este projeto busca analisar os dados do Sistema de Informações de Créditos (SCR) fornecidos pelo Banco Central, utilizando SQL e Python. O objetivo é transformar uma base de dados produtiva em uma versão mais rápida para outros contextos.

## Sumário

1. **Criação de tabela com as modalidades**
2. **Criação de faixas com "lags" necessários**
3. **Criação de faixas de atraso maiores**
4. **Questão Subjetiva**
5. **Geração de consultas e gráficos**
6. **Exportação dos dados processados**

## Detalhes

1. **Criação de tabela com as modalidades**: Utilizando SQL, uma tabela é criada contendo informações detalhadas sobre as várias modalidades de crédito.

2. **Criação de faixas com "lags" necessários**: São criadas faixas que agrupam os dados de crédito, como créditos a vencer e vencidos em diferentes intervalos de tempo.

3. **Criação de faixas de atraso maiores**: Após a criação das faixas anteriores, são criadas faixas de atraso maiores para permitir uma análise mais detalhada dos dados de crédito.

4. **Questão Subjetiva**: O analista deve identificar outras variáveis úteis na construção de um modelo de crédito.

5. **Geração de consultas e gráficos**: Consultas e gráficos são gerados para visualizar informações sobre as diversas modalidades de crédito, como a quantidade de crédito devido e a distribuição de crédito ao longo do tempo.

6. **Exportação dos dados processados**: Os dados processados são exportados para um arquivo CSV para uso posterior.
