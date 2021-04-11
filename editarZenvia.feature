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

Scenario: Sucesso ao Editar o setor do canal
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá selecionar o novo setor do canal no campo "Setor Padrão"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Editar o Tipo de SMS
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá selecionar o novo tipo de sms do canal no campo "Tipo de SMS utilizado para responder"
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

Scenario: Sucesso ao o ID do Agrupador
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá inserir a nova conta do canal no campo "ID Do Agrupador"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será alterado

Scenario: Sucesso ao Desabilitar o Canal
    Given haja canal ativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá desmarcar o campo "Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o canal será desativado

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

Scenario: Sucesso ao Desabilitar o Envio de Ativo
    Given haja canal com Envio de Ativo ativo
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá desmarcar o campo "Envio de Ativo"
    And clicar no botão "Salvar"
    Then a modal deve ser fechada
    And será exibida a mensagem "Os dados foram atualizados com sucesso!"
    And o envio de ativo será ativado

Scenario: Falha ao Editar nome do canal
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And apague o conteúdo do campo "Nome"
    And clicar no botão "Salvar"
    And será exibida a mensagem "O 'Nome' é obrigatório."
    And o nome não será alterado

Scenario: Falha ao Editar o setor do canal
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá selecionar a opção "Selecione uma Opção"
    And clicar no botão "Salvar"
    And será exibida a mensagem "O 'Setor padrão' é obrigatório."
    And o setor não será alterado

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

Scenario: Falha ao Editar o Tipo de SMS
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And deverá selecionar a opção "Selecione um Tipo de SMS"
    And clicar no botão "Salvar"
    And será exibida a mensagem "Preencha os campos obrigatórios."
    And o Tipo de SMS não será alterado

Scenario: Falha ao Editar a Conta
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And apague o conteúdo do campo "Conta"
    And clicar no botão "Salvar"
    And será exibida a mensagem "Preencha os campos obrigatórios"
    And a conta não será alterada

Scenario: Falha ao Editar a Senha
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And apague o conteúdo do campo "Senha"
    And clicar no botão "Salvar"
    And será exibida a mensagem "Preencha os campos obrigatórios"
    And a senha não será alterada

Scenario: Falha ao Editar o ID do Agrupador
    And clicar no botão "Editar"
    Then será aberto uma modal 
    And apague o conteúdo do campo "ID do Agrupador"
    And clicar no botão "Salvar"
    And será exibida a mensagem "Preencha os campos obrigatórios"
    And o ID não será alterado