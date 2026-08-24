-- Inserindo cupons
 INSERT INTO Cupons (codigo, tipo_desconto, valor_desconto, data_validade, limite_uso) VALUES
('BEMVINDO10', 'percentual', 10.00, '2026-12-31', 100),
('BLACKFRIDAY', 'percentual', 30.00, '2026-11-30', 200),
('NATAL15', 'percentual', 15.00, '2026-12-25', 150);  

-- inserindo clientes
INSERT INTO Clientes (nome, email, regiao) VALUES
('Ana Silva', 'ana.silva@email.com', 'Sudeste'),
('Lucas Souza', 'lucas.souza@email.com', 'Nordeste'),
('Beatriz Santos', 'beatriz.santos@email.com', 'Sul'),
('Carlos Eduardo', 'carlos.edu@email.com', 'Centro-Oeste'),
('Mariana Lima', 'mariana.lima@email.com', 'Norte');

-- editando clientes
UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua das Flores', numero = '123', complemento = 'Apto 101', bairro = 'Centro', cidade = 'São Paulo', estado = 'SP', cep = '01001-000'
WHERE id_cliente = 1;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Avenida Brasil', numero = '450', complemento = NULL, bairro = 'Copacabana', cidade = 'Rio de Janeiro', estado = 'RJ', cep = '22041-001'
WHERE id_cliente = 2;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Rua das Palmeiras', numero = '78', complemento = 'Casa', bairro = 'Batel', cidade = 'Curitiba', estado = 'PR', cep = '80420-000'
WHERE id_cliente = 3;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua dos Pinheiros', numero = '1020', complemento = 'Bloco B', bairro = 'Pinheiros', cidade = 'São Paulo', estado = 'SP', cep = '05422-001'
WHERE id_cliente = 4;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Avenida Boa Viagem', numero = '3000', complemento = 'Apto 502', bairro = 'Boa Viagem', cidade = 'Recife', estado = 'PE', cep = '51020-001'
WHERE id_cliente = 5;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Rua dos Andradas', numero = '500', complemento = NULL, bairro = 'Centro Histórico', cidade = 'Porto Alegre', estado = 'RS', cep = '90020-000'
WHERE id_cliente = 6;

UPDATE clientes SET 
    regiao = 'Centro-Oeste', rua = 'Quadra 104 Sul', numero = '12', complemento = 'Lote 5', bairro = 'Plano Piloto', cidade = 'Brasília', estado = 'DF', cep = '70000-000'
WHERE id_cliente = 7;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua da Bahia', numero = '890', complemento = 'Apto 301', bairro = 'Lourdes', cidade = 'Belo Horizonte', estado = 'MG', cep = '30160-011'
WHERE id_cliente = 8;

UPDATE clientes SET 
    regiao = 'Norte', rua = 'Avenida Eduardo Ribeiro', numero = '210', complemento = NULL, bairro = 'Centro', cidade = 'Manaus', estado = 'AM', cep = '69010-001'
WHERE id_cliente = 9;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Avenida Beira Mar', numero = '1500', complemento = 'Apto 1201', bairro = 'Meireles', cidade = 'Fortaleza', estado = 'CE', cep = '60165-121'
WHERE id_cliente = 10;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Augusta', numero = '432', complemento = 'Apto 12', bairro = 'Consolação', cidade = 'São Paulo', estado = 'SP', cep = '01304-000'
WHERE id_cliente = 11;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Rua XV de Novembro', numero = '88', complemento = NULL, bairro = 'Centro', cidade = 'Joinville', estado = 'SC', cep = '89201-000'
WHERE id_cliente = 12;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua São José', numero = '34', complemento = 'Sala 402', bairro = 'Centro', cidade = 'Niterói', estado = 'RJ', cep = '24020-000'
WHERE id_cliente = 13;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Avenida Sete de Setembro', numero = '901', complemento = NULL, bairro = 'Barra', cidade = 'Salvador', estado = 'BA', cep = '40060-001'
WHERE id_cliente = 14;

UPDATE clientes SET 
    regiao = 'Centro-Oeste', rua = 'Avenida T-63', numero = '145', complemento = 'Qd 12', bairro = 'Bueno', cidade = 'Goiânia', estado = 'GO', cep = '74230-100'
WHERE id_cliente = 15;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Timbiras', numero = '654', complemento = 'Apto 80', bairro = 'Funcionários', cidade = 'Belo Horizonte', estado = 'MG', cep = '30140-060'
WHERE id_cliente = 16;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Avenida Brasil', numero = '2210', complemento = NULL, bairro = 'Centro', cidade = 'Cascavel', estado = 'PR', cep = '85801-000'
WHERE id_cliente = 17;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Amador Bueno', numero = '99', complemento = 'Casa 2', bairro = 'Santo Amaro', cidade = 'São Paulo', estado = 'SP', cep = '04752-000'
WHERE id_cliente = 18;

UPDATE clientes SET 
    regiao = 'Norte', rua = 'Avenida Nazaré', numero = '450', complemento = 'Apto 204', bairro = 'Nazaré', cidade = 'Belém', estado = 'PA', cep = '66035-170'
WHERE id_cliente = 19;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Rua das Rendeiras', numero = '77', complemento = NULL, bairro = 'Ponta Negra', cidade = 'Natal', estado = 'RN', cep = '59090-000'
WHERE id_cliente = 20;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Marechal Deodoro', numero = '310', complemento = NULL, bairro = 'Centro', cidade = 'Campinas', estado = 'SP', cep = '13010-080'
WHERE id_cliente = 21;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Avenida Beira Mar Norte', numero = '890', complemento = 'Apto 601', bairro = 'Agronômica', cidade = 'Florianópolis', estado = 'SC', cep = '88025-000'
WHERE id_cliente = 22;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Avenida Epitácio Pessoa', numero = '1120', complemento = NULL, bairro = 'Tambaú', cidade = 'João Pessoa', estado = 'PB', cep = '58039-000'
WHERE id_cliente = 23;

UPDATE clientes SET 
    regiao = 'Centro-Oeste', rua = 'Avenida Historiador Rubens de Mendonça', numero = '500', complemento = 'Sala 10', bairro = 'Bosque da Saúde', cidade = 'Cuiabá', estado = 'MT', cep = '78050-000'
WHERE id_cliente = 24;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Barão do Rio Branco', numero = '204', complemento = 'Apto 11', bairro = 'Centro', cidade = 'Ribeirão Preto', estado = 'SP', cep = '14010-000'
WHERE id_cliente = 25;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Rua Marechal Floriano', numero = '56', complemento = NULL, bairro = 'Centro', cidade = 'Caxias do Sul', estado = 'RS', cep = '95020-000'
WHERE id_cliente = 26;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Avenida Reta da Penha', numero = '1400', complemento = 'Apto 405', bairro = 'Praia do Canto', cidade = 'Vitória', estado = 'ES', cep = '29055-250'
WHERE id_cliente = 27;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Rua das Carmelitas', numero = '81', complemento = NULL, bairro = 'Jaraguá', cidade = 'Maceió', estado = 'AL', cep = '57022-000'
WHERE id_cliente = 28;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua São Bento', numero = '789', complemento = 'Apto 32', bairro = 'Centro', cidade = 'Sorocaba', estado = 'SP', cep = '18010-000'
WHERE id_cliente = 29;

UPDATE clientes SET 
    regiao = 'Norte', rua = 'Avenida Jorge Teixeira', numero = '1200', complemento = NULL, bairro = 'Embratel', cidade = 'Porto Velho', estado = 'RO', cep = '76820-000'
WHERE id_cliente = 30;

UPDATE clientes SET 
    regiao = 'Sudeste', rua = 'Rua Oscar Freire', numero = '980', complemento = 'Apto 141', bairro = 'Jardins', cidade = 'São Paulo', estado = 'SP', cep = '01426-000'
WHERE id_cliente = 31;

UPDATE clientes SET 
    regiao = 'Nordeste', rua = 'Rua do Sol', numero = '302', complemento = NULL, bairro = 'Centro', cidade = 'São Luís', estado = 'MA', cep = '65020-590'
WHERE id_cliente = 32;

UPDATE clientes SET 
    regiao = 'Sul', rua = 'Rua Sete de Setembro', numero = '415', complemento = 'Casa', bairro = 'Centro', cidade = 'Blumenau', estado = 'SC', cep = '89010-200'
WHERE id_cliente = 33;

UPDATE clientes SET 
    regiao = 'Centro-Oeste', rua = 'Avenida Afonso Pena', numero = '2000', complemento = 'Apto 802', bairro = 'Centro', cidade = 'Campo Grande', estado = 'MS', cep = '79002-073'
WHERE id_cliente = 34;

UPDATE clientes SET 
    regiao = 'Norte', rua = 'Avenida Getúlio Vargas', numero = '150', complemento = NULL, bairro = 'Centro', cidade = 'Rio Branco', estado = 'AC', cep = '69900-000'
WHERE id_cliente = 35;



-- testando o insert com avaliações
-- adicionando novos clientes
INSERT INTO Clientes (nome, email, regiao) VALUES
('Rafael Nogueira', 'rafael.nogueira@email.com', 'Sudeste'),
('Juliana Castro', 'juliana.castro@email.com', 'Sul'),
('Pedro Henrique', 'pedro.henrique@email.com', 'Nordeste'),
('Camila Ferreira', 'camila.ferreira@email.com', 'Centro-Oeste'),
('Thiago Almeida', 'thiago.almeida@email.com', 'Norte');
-- criando pedidos para os novos clientes
insert into pedidos (id_cliente, id_Produto, status, valor_total) values
(36, 1, 'Entregue', 299.90),
(37, 2, 'Entregue', 149.90),
(38, 3, 'Entregue', 189.90),
(39, 8, 'Entregue', 250.00),
(40, 5, 'Entregue', 99.90);
-- inserindo os ids dos pedidos corretos
insert into itens_pedidos (id_Pedido, id_Produto, quantidade, preco_unitario) values
(21, 1, 1, 299.90),
(22, 2, 1, 149.90),
(23, 3, 1, 189.90),
(24, 8, 1, 250.00),
(25, 5, 1, 99.90);
-- inserindo as avaliações aos pedidos novos
insert into avaliacoes (cliente_id, id_produto, pedido_id, nota, comentario) values
(36, 1, 21, 5, 'Ótimo tênis, recomendo demais'),
(37, 2, 22, 4, 'Som muito bom, gostei do produto'),
(38, 3, 23, 3, 'Mochila boa, mas achei um pouco cara'),
(39, 8, 24, 5, 'Produto de excelente qualidade'),
(40, 5, 25, 2, 'Não gostei, esperava mais');
