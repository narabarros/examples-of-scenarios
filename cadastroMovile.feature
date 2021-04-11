Feature: Cadastrar canal de SMS da Movile
    Permitir cadastrar um canal de SMS da integradora Movile

Background:
    Given que haja a empresa criada
    And o usuário seja Lord
    When o usuário acessar os canais de entrada
    And clicar na opção "SMS"
    And clicar no botão "Novo SMS"
    And selecionar a Opção "Movile" no campo "Gateway"

Scenario: Sucesso ao criar Canal de SMS (Ativo/Envio de Ativo/Processor)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Processor"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"

Scenario: Sucesso ao criar Canal de SMS (Ativo/Envio de Ativo)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"

Scenario: Sucesso ao criar Canal de SMS (Ativo)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"

Scenario: Sucesso ao criar Canal de SMS
    And preencher o campo "Nome"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"

Scenario: Falha ao criar Canal de SMS (Sem Nome)
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "O 'Nome' é obrigatório."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Setor Padrão)
    And preencher o campo "Nome"
    And preencher o campo "Login"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "O 'Setor Padrão' é obrigatório."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Login)
    And preencher o campo "Nome"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Token de Autenticação)
    And preencher o campo "Nome"
    And selecionar uma opção no campo "Setor padrão"
    And preencher o campo "Token de autenticação"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado