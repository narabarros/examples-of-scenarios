Feature: Alterar setor do canal na tela de SMS
    Permitir alterar o setor de um canal na tela principal de cadastro de SMS

Background:
    Given que haja a empresa criada
    And o usuário seja Lord
    When o usuário acessar os canais de entrada
    And clicar na opção "SMS"
    Given que haja canal de SMS cadastrado

Scenario: Sucesso ao Alterar o setor na tela de SMS
    And selecionar um novo setor no campo "Setor Direcionado"
    Then será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o setor será alterado