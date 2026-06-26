Projeto E-commerce SQL
Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de E-commerce. O objetivo é gerenciar informações essenciais de uma loja virtual, como o cadastro de clientes, controle de estoque de produtos, registro de pedidos e o detalhamento dos itens comprados, além de fornecer consultas analíticas para o negócio.

Modelagem do Banco de Dados
O banco de dados é composto por 4 tabelas principais, estruturadas da seguinte forma:

Clientes (Clientes): Armazena os dados cadastrais dos usuários da plataforma, registrando automaticamente a data e hora em que a conta foi criada.

Produtos (Produtos): Contém as informações do catálogo de itens da loja, incluindo nome, categoria, preço unitário e a quantidade disponível em estoque.

Pedidos (pedidos): Registra as vendas realizadas, vinculando o cliente que comprou, a data da transação, o status do pedido (ex: pendente, pago, enviado) e o valor total gasto.

Itens dos Pedidos (itens_pedidos): Tabela de relacionamento que detalha quais produtos estão incluídos em cada pedido, controlando a quantidade de itens e o preço unitário praticado no momento da compra.

 Estrutura e Scripts SQL
O script cria o banco de dados projeto_sql_ecommerce e define as tabelas com restrições de integridade (chaves primárias e estrangeiras) para garantir que os dados permaneçam consistentes.

Destaques Técnicos da Modelagem:
Auto-incremento: Utilizado nas chaves primárias (Id_Cliente, id_Produto, id_Pedido, id_itens) para garantir identificadores únicos automáticos.

Campos Temporais: Uso de timestamp default current_timestamp para capturar o momento exato das ações sem necessidade de inserção manual.

Integridade Referencial: Uso de FOREIGN KEY para garantir, por exemplo, que não existam itens de pedido sem um produto ou pedido válido por trás.

Evolução do Banco: Inclusão de um comando ALTER TABLE para associar corretamente a tabela de pedidos à tabela de clientes.

Consultas Analíticas (Queries)
O projeto também conta com consultas SQL avançadas para extrair insights importantes sobre o comportamento do e-commerce:

1. Filtro de Clientes por Período
Busca o nome e a data de cadastro dos clientes que se registraram até uma determinada data específica, utilizando uma subquery condicional (EXISTS) para validação de intervalo.

2. Top 3 Produtos Mais Vendidos
Uma query indispensável para o negócio. Utiliza o cruzamento de tabelas (INNER JOIN), agrupamento de dados (GROUP BY) e funções de agregação (SUM) para listar os três produtos com maior volume de unidades vendidas, ordenados do maior para o menor.

3. Clientes Inativos (Sem Compras)
Identifica possíveis oportunidades de marketing descobrindo quais clientes se cadastraram no sistema, mas ainda não realizaram nenhuma compra. Isso é feito de forma eficiente utilizando um LEFT JOIN e filtrando os resultados onde o ID do pedido é nulo (is null).
