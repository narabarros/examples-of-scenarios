Feature: Editar Canal de SMS da Zenvia
    Permitir alterar um canal de SMS da integradora Zenvia

Background:
    Given que haja a empresa criada
    And o usuário seja Lord
    When o usuário acessar os canais de entrada
    And clicar na opção "SMS"
    Given que haja canal de SMS cadastrado

Scenario: Sucesso ao Cancelar a edição
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And clicar no botão "Cancelar"
    Then a modal deve ser fechada

Scenario: Sucesso ao Editar nome do canal
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir o novo nome do canal no campo "Nome"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Habilitar o Canal
    Given haja canal inativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá marcar o campo "Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será ativado

Scenario: Sucesso ao Habilitar o Envio de Ativo
    Given haja canal com Envio de Ativo inativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá marcar o campo "Envio de Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o envio de ativo será ativado

Scenario: Sucesso ao Editar o setor do canal
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá selecionar o novo setor do canal no campo "Setor Padrão"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar o processor (Adicionando valor ao campo)
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir o novo valor no campo "Processor"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar o processor (Removendo valor ao campo)
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá apagar o conteudo do campo "Processor"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar a Conta
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir a nova conta do canal no campo "Conta"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar a Senha
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir a nova conta do canal no campo "Senha"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar o Account Id (Adicionando valor ao campo)
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir o novo valor no campo "Account Id"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar o Account Id (Removendo valor ao campo)
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá apagar o conteudo do campo "Account Id"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Habilitar o Envio de Ativo
    Given haja canal com Envio de Ativo inativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá marcar o campo "Envio de Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o envio de ativo será ativado

Scenario: Sucesso ao Desabilitar o Envio de Ativo
    Given haja canal com Envio de Ativo ativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá desmarcar o campo "Envio de Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o envio de ativo será ativado