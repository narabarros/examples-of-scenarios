Feature: Remover Setor
    Remover um setor cadastrado

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar as configurações
    And clicar na opção "Minha Empresa"
    And clicar na opção "Setores de atendimento"
    Given que haja setores cadastrados

Scenario: Sucesso ao remover o setor
    And o setor não esteja vinculado a um canal
    And clicar no botão "Remover"
    Then deverá abrir uma modal para confirmar a remoção
    And clicando no botão "Confirmar"
    Then a modal será fechada 
    And será exibida a mensagem "Setor removido com sucesso!"
    And o setor será removido

Scenario: Cancelar remoção do setor
    And clicar no botão "Remover"
    Then deverá abrir uma modal para confirmar a remoção
    And clicando no botão "Cancelar"
    Then a modal será fechada 
    And o setor não será removido

Scenario: Falha ao remover setor vinculado a um canal
    And o setor esteja vinculado a um canal
    And clicar no botão "Remover"
    Then deverá abrir uma modal para confirmar a remoção
    And clicando no botão "Confirmar"
    Then a modal será fechada 
    And será exibida a mensagem "Existem atendimentos ou canais relacionados ao setor."
    And o setor não será removido