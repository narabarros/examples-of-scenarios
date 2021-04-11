Feature: Filtrar o Histórico
    Filtrar os atendimentos por filtros

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar o histórico

Scenario: Filtrar por Periodo
    Then deve preencher o campo "Periodo (De)"
    And preencher o campo "Periodo (a)"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Nome do Cliente
    Then deve preencher o campo "Nome do Cliente"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Telefone
    Then deve preencher o campo "Telefone (com DDD)"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por E-mail
    Then deve preencher o campo "E-mail (Completo)"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Protocolo
    Then deve preencher o campo "Protocolo"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Setor
    Then deve preencher o campo "Setor"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Canal de Entrada
    Then deve preencher o campo "Canal de Entrada"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Atendimento não Finalizado
    Then deve habilitar o campo "Atendimento não Finalizado"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Status de Classificação
    Then deve preencher o campo "Status de Classificação"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Status de Finalização
    Then deve preencher o campo "Status de Finalização"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro

Scenario: Filtrar por Finalizado por
    Then deve preencher o campo "Finalizado por"
    And clicar no botão "Filtrar"
    Then deve ser exibido os resultados da busca de acordo com o filtro
