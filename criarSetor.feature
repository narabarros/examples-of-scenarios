Feature: Cadastrar Setor
    Cadastrar novos setores

Background:
    Given que haja a empresa criada
    And o usuário seja Gestor
    When o usuário acessar as configurações
    And clicar na opção "Minha Empresa"
    And clicar na opção "Setores de atendimento"

Scenario: Sucesso ao criar um setor no Mktzap
    Then deverá inserir o nome do setor no Campo "Adicionar um novo setor"
    And clicar no botão "Adicionar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"
    And o setor será criado

Scenario: Falha ao criar um setor no Mktzap
    And clicar no botão "Adicionar"
    Then será exibida a mensagem "Erro ao processar requisição, por favor tente novamente."
    And o setor não será criado.
