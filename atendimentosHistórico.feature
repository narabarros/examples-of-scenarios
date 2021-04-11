Feature: Atendimentos no Histórico
    Baixar o Atendimento
    Visualizar o Atendimento
    Visualizar Todos os Atendimentos de um contato
    Gerar PDF do Atendimento

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar o histórico
    Given o atendimento estar na tela

Scenario: Baixar Atendimento
    And clicar no botão "Baixar"
    Then será feito o download do csv com os dados do atendimento

Scenario: Visualizar Atendimento
    And clicar no botão "Visualizar"
    Then será aberto uma modal com os dados do atendimento
    And clicar no botão "Fechar"
    Then a modal deve ser fechada

Scenario: Visualizando todos os atendimentos de um cliente
    And clicar no botão "Visualizar"
    Then será aberto uma modal com os dados do atendimento
    And clicar no botão "Exibir todos os atendimentos do contato selecionado"
    Then todos os atendimentos desse contato deverão ser exibidos na tela

Scenario: Gerar PDF do atendimento
    And clicar no botão "Visualizar"
    Then será aberto uma modal com os dados do atendimento
    And clicar no botão "Gerar PDF"
    Then será feito o download do pdf com os dados do atendimento