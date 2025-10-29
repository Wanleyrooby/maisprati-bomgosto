# ☕ Consultas BomGosto

Este projeto contém um conjunto de scripts SQL para o controle de vendas de café da cafeteria **BomGosto**.  
O sistema foi modelado para registrar **comandas de clientes**, **itens consumidos** e o **cardápio de cafés**, permitindo gerar consultas gerenciais de vendas, faturamento e itens vendidos.

---

## 🗂️ Estrutura do Projeto

```

Consultas BomGosto/
│
├── CriaçãoTabelas.sql
├── InserçãoDados.sql
├── CardapioPorNome.sql
├── ComandasItens.sql
├── ComandasComValorTotal.sql
├── ComandasComMaisDeUmTipo.sql
└── TotalFaturamentoPorData.sql

````

---

## ⚙️ Descrição dos Arquivos

### 🧱 **CriaçãoTabelas.sql**
Script responsável pela criação das tabelas principais do banco de dados:
- **Cardapio** — informações dos cafés (nome, descrição e preço)
- **Comanda** — dados do pedido (data, mesa e cliente)
- **ItemComanda** — relacionamento entre comandas e cafés vendidos

Inclui todas as chaves primárias, estrangeiras e restrições de integridade.

---

### ☕ **InserçãoDados.sql**
Popula o banco com dados de exemplo para testes, incluindo:
- Cadastros de cafés
- Comandas de clientes em diferentes datas
- Itens de comandas com quantidades variadas

---

### 📋 **CardapioPorNome.sql**
Consulta o cardápio completo ordenado alfabeticamente pelo nome do café.

```sql
SELECT * FROM Cardapio ORDER BY nome_cafe;
````

---

### 🧾 **ComandasItens.sql**

Lista todas as comandas com seus respectivos itens, exibindo:

* Código da comanda, data, mesa e nome do cliente
* Nome do café, descrição, quantidade, preço unitário e total por item

Ordenado por **data**, **código da comanda** e **nome do café**.

---

### 💰 **ComandasComValorTotal.sql**

Exibe o **valor total de cada comanda**, somando os itens vendidos.
Campos exibidos:

* Código, data, mesa, nome do cliente e valor total da comanda.
  Ordenado por **data**.

---

### ☕➕ **ComandasComMaisDeUmTipo.sql**

Versão filtrada da consulta anterior, exibindo **apenas as comandas que possuem mais de um tipo de café**.

Utiliza `HAVING COUNT(DISTINCT i.cod_cardapio) > 1` para o filtro.

---

### 📆 **TotalFaturamentoPorData.sql**

Agrupa todas as vendas por data e exibe o **faturamento total diário** da cafeteria.
Ordenado por **data da comanda**.

---

## 🛠️ Como Executar

1. Abra o **MySQL Workbench** ou outro cliente SQL de sua preferência.
2. Execute o arquivo `CriaçãoTabelas.sql` para criar as tabelas.
3. Execute o arquivo `InserçãoDados.sql` para inserir os dados de exemplo.
4. Rode as consultas desejadas (`CardapioPorNome.sql`, `ComandasItens.sql`, etc.).
5. Analise os resultados e gere relatórios de faturamento.

---

## 🧩 Requisitos

* **MySQL 8.0+**
* Usuário com permissão de criação de banco e tabelas

---

## 📊 Exemplo de Resultado

**Consulta:** `TotalFaturamentoPorData.sql`

| data_comanda | faturamento_total |
| ------------ | ----------------- |
| 2025-10-25   | 28.00             |
| 2025-10-26   | 48.00             |
| 2025-10-27   | 4.50              |

---

## 👩‍💻 Autor

Projeto desenvolvido para fins acadêmicos e de prática em **SQL relacional e consultas de agregação**.
**Cafeteria BomGosto © 2025**

---

