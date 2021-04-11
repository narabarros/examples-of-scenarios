Feature: Excluir canais de SMS
    Permitir excluir canais de SMS

Background:
    Given que haja a empresa criada
    And o usuário seja Lord
    When o usuário acessar os canais de entrada
    And clicar na opção "SMS"
    Given que haja canal de SMS cadastrado

Scenario: Sucesso ao excluir do canal de SMS
    And clicar no botão "Excluir"
    Then será aberto uma modal para confirmar a exclusão
    And clicar no botão "Confirmar"
    Then a modal deve ser fechada
    And será exibida a mensagem "O Canal foi apagado com sucesso!"
    And o canal será excluido

Scenario: Sucesso ao cancelar a exclusão do canal de SMS
    And clicar no botão "Excluir"
    Then será aberto uma modal para confirmar a exclusão
    And clicar no botão "Cancelar"
    Then a modal deve ser fechada
    And o canal não será excluido