Feature: Baixar Histórico

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar o histórico

Scenario: Baixar Histórico
    Given os atendimentos já estarem na tela
    And clicar no botão "Baixar historico"
    Then será feito o download do csv com os dados da tabela do histórico