# 🧠 Estratégia de Testes – API Trello

## Endpoints
- **POST /boards** – criar board
- **POST /lists** – criar lista no board
- **POST /cards** – criar card
- **DELETE /cards/{id}** – excluir card
- **DELETE /boards/{id}** – excluir board

## Sequência de Execução
1. Criar Board
2. Criar Lista dentro do Board
3. Criar Card dentro da Lista
4. Excluir Card
5. Excluir Board

## Validações
- Status code = 200
- Campos obrigatórios retornados (id, name, date)
- Consistência de IDs (boardId → listId → cardId)
- Mensagens de erro quando parâmetros inválidos

## Boas Práticas
- Reutilização de variáveis (armazenar IDs em memória)
- Independência entre testes (cada cenário pode rodar isolado)
- Evidências: logs de requisições e respostas
