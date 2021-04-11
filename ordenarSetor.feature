Feature: Ordenar Setor
    Ordenar os setores conforme o desejo do usuario

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar as configurações
    And clicar na opção "Minha Empresa"
    And clicar na opção "Setores de atendimento"
    Given que haja setores cadastrados

Scenario: Sucesso em ordenar os setores
    Then deverá clicar e arrastar o setor que deseja ordenar para a posição desejada
    And clicar no botão "Salvar Ordem Atual"
    Then será exibida a mensagem "Ordem alterada com sucesso!"
    And a ordem dos setores será salva