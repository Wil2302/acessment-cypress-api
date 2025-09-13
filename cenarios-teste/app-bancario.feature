Feature: Aplicativo Bancário
  Como usuário do aplicativo bancário
  Quero realizar operações financeiras
  Para que eu possa gerenciar minha conta de forma segura e eficiente

  Background:
    Dado que o usuário possui cadastro válido
    E o sistema está integrado com backend e banco de dados
    E há conexão de internet disponível

  # ----------------------------
  # Login
  # ----------------------------
  Scenario: Login com credenciais válidas
    Quando o usuário informar usuário e senha corretos
    Então o sistema deve permitir o acesso ao aplicativo

  Scenario: Login com senha incorreta
    Quando o usuário informar uma senha incorreta
    Então o sistema deve exibir mensagem de erro "Credenciais inválidas"

  Scenario: Login bloqueado após 3 tentativas inválidas
    Dado que o usuário errou a senha 3 vezes consecutivas
    Quando tentar realizar login novamente
    Então o sistema deve bloquear o acesso e exibir mensagem "Conta bloqueada"

  Scenario: Login com campos obrigatórios em branco
    Quando o usuário tentar logar sem preencher usuário ou senha
    Então o sistema deve exibir mensagem "Preencha todos os campos obrigatórios"

  Scenario: Logout com sucesso
    Dado que o usuário está logado
    Quando clicar em "Sair"
    Então o sistema deve encerrar a sessão e voltar para a tela de login

  # ----------------------------
  # Transferência
  # ----------------------------
  Scenario: Transferência com saldo suficiente
    Dado que o usuário possui saldo suficiente
    Quando realizar uma transferência válida
    Então o sistema deve confirmar a operação e atualizar o saldo

  Scenario: Transferência com saldo insuficiente
    Dado que o usuário possui saldo insuficiente
    Quando tentar realizar uma transferência
    Então o sistema deve exibir mensagem "Saldo insuficiente"

  Scenario: Transferência para conta inexistente
    Quando o usuário tentar transferir para uma conta que não existe
    Então o sistema deve exibir mensagem "Conta inválida"

  Scenario: Confirmação de transferência
    Quando o usuário realizar uma transferência
    Então o sistema deve exibir uma mensagem de confirmação antes de concluir

  Scenario: Histórico de transferências
    Dado que o usuário realizou transferências anteriormente
    Quando acessar o histórico
    Então o sistema deve listar as transferências realizadas

  # ----------------------------
  # Extrato
  # ----------------------------
  Scenario: Exibir transações em ordem cronológica
    Quando o usuário acessar o extrato
    Então o sistema deve exibir as transações em ordem cronológica

  Scenario: Filtrar transações por período
    Quando o usuário aplicar o filtro "últimos 30 dias"
    Então o sistema deve exibir apenas transações desse período

  Scenario: Exportar extrato
    Quando o usuário solicitar exportar o extrato em PDF
    Então o sistema deve gerar o arquivo PDF com as transações

  Scenario: Exibir saldo atual
    Quando o usuário acessar o extrato
    Então o sistema deve exibir o saldo atual no topo da tela

  # ----------------------------
  # Pagamento de Contas
  # ----------------------------
  Scenario: Pagamento de boleto válido
    Quando o usuário realizar o pagamento de um boleto válido
    Então o sistema deve confirmar o pagamento e atualizar o saldo

  Scenario: Pagamento de boleto vencido
    Quando o usuário tentar pagar um boleto vencido
    Então o sistema deve exibir mensagem "Boleto vencido, pagamento não autorizado"

  Scenario: Pagamento com saldo insuficiente
    Quando o usuário tentar pagar um boleto sem saldo suficiente
    Então o sistema deve exibir mensagem "Saldo insuficiente"

  Scenario: Confirmação de pagamento realizado
    Quando o usuário concluir o pagamento de um boleto
    Então o sistema deve exibir o status "Pago"

  Scenario: Listagem de pagamentos realizados
    Quando o usuário acessar a tela de pagamentos
    Então o sistema deve exibir a lista de pagamentos já realizados
