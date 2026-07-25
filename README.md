#  Projeto E-commerce SQL - Banco de Dados Relacional

> ** AVISO IMPORTANTE (ISENÇÃO DE RESPONSABILIDADE)** > Este repositório foi desenvolvido **100% para fins acadêmicos e de estudo pessoal**.  
> O código, a modelagem, os scripts e as credenciais fornecidas foram criados para aprendizado do uso da linguagem SQL e **NÃO devem, sob nenhuma hipótese, ser utilizados ou implantados em ambiente de produção**.

---

##  Sobre o Projeto

Este projeto consiste na modelagem, manipulação e administração completa de um banco de dados relacional para um sistema de **E-commerce**. O objetivo é simular todas as etapas de um banco de dados real de loja virtual:
- Cadastro e gestão de clientes com **endereço completo**;
- Controle de catálogo de **produtos e estoque**;
- Processamento de **pedidos e itens** comprados;
- Aplicação de **cupons de desconto**;
- Criação de **Relatórios/Views** para exportação de dados;
- Implementação de **Políticas de Segurança e Acesso (DCL)** com múltiplos níveis de permissão.

---

##  Estrutura e Modelagem do Banco de Dados

O banco de dados `projeto_sql_ecommerce` é composto por 5 tabelas principais e 1 visão (View):

1. **`clientes`**: Registra os dados cadastrais (nome, e-mail, data de cadastro), a região e o endereço completo (rua, número, complemento, bairro, cidade, estado e CEP).
2. **`produtos`**: Armazena o catálogo de itens da loja, categoria, preço unitário e a quantidade em estoque.
3. **`pedidos`**: Registra as vendas realizadas, incluindo a data da transação, o status do pedido, o valor total e o vínculo com cupom de desconto.
4. **`itens_pedidos`**: Tabela associativa que detalha quais produtos pertencem a cada pedido, registrando quantidade e preço unitário praticado.
5. **`cupons`**: Armazena cupons promocionais com regras de validade, limite de uso, tipo de desconto e status ativo.
6. **`vs_relatorio_clientes` (View)**: Visão consolidada para geração e exportação de relatórios de clientes com logradouro formatado.

---

##  Controle de Segurança e Perfis de Acesso (DCL)

Para garantir a segurança do banco de dados, foram configurados 3 perfis de usuários com privilégios limitados:

| Usuário | Host | Senha Padrão | Nível de Permissão / Privilégios |
| :--- | :--- | :--- | :--- |
| **`admin_usuario`** | `localhost` | `senhaadmin123!` | **Acesso Total (`ALL PRIVILEGES`)** com permissão de repasse (`WITH GRANT OPTION`). |
| **`gerente_usuario`** | `localhost` | `gerente123!` | **Manipulação de Dados (`SELECT`, `INSERT`, `UPDATE`, `DELETE`)** em todas as tabelas. |
| **`atendente_usuario`** | `localhost` | `atendente123!` | **Leitura (`SELECT`)** em todo o banco e **atualização restrita (`UPDATE`)** apenas na coluna `status` da tabela `pedidos`. |
