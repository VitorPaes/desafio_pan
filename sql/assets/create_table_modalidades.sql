DROP TABLE IF EXISTS modalidades;
CREATE TABLE modalidades (
    modalidade INTEGER,
    dominio TEXT,
    subdominio TEXT,
    descricao TEXT);
INSERT INTO modalidades (modalidade, dominio, subdominio, descricao)
VALUES 
(202, '02', '02', 'consignado'),
(101, '01', '01', 'cheque_especial'),
(213, '02', '13', 'cheque_especial'),
(204, '02', '04', 'cartao_revolver'),
(210, '02', '10', 'cartao_revolver'),
(218, '02', '18', 'cartao_revolver'),
(406, '04', '06', 'cartao_revolver'),
(1304, '13', '04', 'cartao_transactor'),
(499, '04', '99', 'outros');
