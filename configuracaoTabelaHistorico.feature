Feature: Configurar tabela do Histórico
    Configurar as colunas que irão aparecer na tabela do histórico

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar o histórico
    Given os atendimentos já estarem na tela

Scenario: Exibindo coluna na Tabela
    And clicar no botão "Esconder/Mostrar colunas"
    And marcar um campo
    Then o campo marcado deve ser exibido na tabela

Scenario: Escondendo coluna na Tabela
    And clicar no botão "Esconder/Mostrar colunas"
    And desmarcar um campo
    Then o campo marcado deve ser removido da tabela