# 🏠 Sistema de Gestão de Imóveis

Este projeto consiste na modelagem e implementação de um banco de dados para gerenciar informações de proprietários, inquilinos, imóveis e corretores de uma imobiliária.

## 📂 Estrutura do Projeto

O projeto está dividido nos seguintes arquivos:

- **📜 objetosBD.sql**: Contém o script SQL DDL para a criação das tabelas, definição de chaves primárias e estrangeiras.
- **📜 dadosBD.sql**: Script SQL DML contendo inserção de pelo menos 7 registros por tabela.
- **📜 consultas.sql**: Contém consultas SQL diversas, incluindo filtros, ordenações e junções entre tabelas.
- **📄 modelo_logico.pdf**: Documento com o modelo lógico relacional do banco de dados.
- **📘 README.md**: Documento explicativo sobre o projeto.

## 🔍 Consultas Implementadas

As consultas SQL armazenadas no arquivo `consultas.sql` incluem:

1. **📌 Consultas para cada tabela** com `SELECT`, `WHERE` e `ORDER BY`.
2. **📊 Consulta com `AVG` ou `COUNT` e `GROUP BY`** para calcular estatísticas.
3. **🔗 Consulta com `INNER JOIN`** envolvendo duas tabelas.
4. **🔄 Consulta com `LEFT JOIN` ou `RIGHT JOIN`** envolvendo duas tabelas.
5. **🖇️ Consulta com `INNER JOIN` envolvendo três tabelas**.

Cada consulta foi explicada detalhadamente no arquivo `consultas.sql`.

## 🚀 Como Utilizar

1. Execute o script `NomeAluno_objetosBD.sql` para criar as tabelas no banco de dados.
2. Execute o script `dadosBD.sql` para inserir os dados nas tabelas.
3. Utilize as consultas do arquivo `consultas.sql` para visualizar e manipular os dados.

## 🛠️ Tecnologias Utilizadas

- **Banco de Dados**: MySQL/PostgreSQL (compatível com SQL padrão)
- **Linguagem SQL**: DDL para estruturação e DML para manipulação de dados
