Feature: Editar Setor
    Alterar o nome de um setor já cadastrado

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar as configurações
    And clicar na opção "Minha Empresa"
    And clicar na opção "Setores de atendimento"
    Given que haja setores cadastrados

Scenario: Sucesso ao editar setor
    Then deverá inserir o novo nome do setor no Campo "Nome do Setor"
    And clicar no botão "Salvar Edições"
    Then será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o nome do setor será alterado.

Scenario: Falha ao editar setor
    Then deverá deixar em branco o novo nome do setor no Campo "Nome do Setor"
    And clicar no botão "Salvar Edições"
    Then será exibida a mensagem "Erro ao processar requisição, por favor tente novamente."
    And o nome do setor não será alterado.
