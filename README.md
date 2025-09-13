# Prova Prática - QA Automação

Este repositório contém as entregas referentes ao teste prático de QA, englobando:
1. Cenários de Teste de um aplicativo bancário
2. Consultas SQL sobre um modelo entidade-relacionamento
3. Automação de testes de API (Trello) utilizando Cypress
4. Estratégia de testes representada em mapa mental

---

## 📌 1. Cenários de Teste – Aplicativo Bancário
Os cenários foram definidos considerando as seguintes **premissas**:
- Usuário possui cadastro válido
- Sistema integrado com backend e banco de dados
- App com autenticação (usuário/senha + token de sessão)
- Conexão de internet disponível

Exemplos de funcionalidades testadas:
- **Login**: sucesso, senha incorreta, bloqueio após tentativas inválidas  
- **Transferência**: saldo suficiente, saldo insuficiente, conta inexistente  
- **Extrato**: listagem de transações e exportação  
- **Pagamentos**: boleto válido, boleto vencido, saldo insuficiente  

👉 Arquivo detalhado: [`cenarios-teste/app-bancario.md`](./cenarios-teste/app-bancario.md)

---

## 🗄️ 2. Consultas SQL
As queries foram escritas para cobrir os cenários solicitados:

- Listar alunos matriculados na disciplina **Cálculo** do professor **João**
- Exibir a quantidade de alunos por disciplina
- Listar disciplinas que **todos os professores** lecionam
- Exibir o total de professores
- Listar alunos que cursaram alguma disciplina entre 2000 e 2020

👉 Arquivo completo: [`sql/queries.sql`](./sql/queries.sql)

---

## 🤖 3. Automação de Testes – Trello API (Cypress)

### Pré-requisitos
- Node.js instalado
- Cypress instalado (`npm install cypress axios --save-dev`)
- Criar chave e token de API do Trello ([documentação oficial](https://developers.trello.com/docs/api-introduction))

### Estrutura de Testes
- Criar um board
- Criar um card
- Excluir um card
- Excluir um board

👉 Arquivo de automação: [`cypress/e2e/trelloApi.cy.js`](./cypress/e2e/trelloApi.cy.js)

### Como executar
```bash
npx cypress open
# ou em modo headless
npx cypress run
