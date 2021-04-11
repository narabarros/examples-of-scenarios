Feature: Cadastrar canal de SMS da Zenvia
    Permitir cadastrar um canal de SMS da integradora Zenvia

Background:
    Given que haja a empresa criada
    And o usuário seja Lord
    When o usuário acessar os canais de entrada
    And clicar na opção "SMS"
    And clicar no botão "Novo SMS"
    And selecionar a Opção "Zenvia" no campo "Gateway"

Scenario: Sucesso ao criar Canal de SMS
    And preencher o campo "Nome"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecione uma opção no campo "Tipo de SMS utilizado para responder"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"
    And o Canal será criado com Sucesso

Scenario: Sucesso ao criar Canal de SMS (Ativo)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecione uma opção no campo "Tipo de SMS utilizado para responder"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"
    And o Canal será criado com Sucesso

Scenario: Sucesso ao criar Canal de SMS (Ativo/Envio de Ativo)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Os dados foram criados com sucesso!"
    And o Canal será criado com Sucesso

Scenario: Falha ao criar Canal de SMS (Sem Nome)
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "O 'Nome' é obrigatório."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Setor)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "O 'Setor padrão' é obrigatório."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Tipo de SMS)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Conta)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Senha"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem Senha)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Conta"
    And preencher o campo "ID do Agrupador"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado

Scenario: Falha ao criar Canal de SMS (Sem ID do Agrupador)
    And preencher o campo "Nome"
    And marcar a opção "Ativo"
    And selecionar um valor no campo "Setor Padrão"
    And preencher o campo "Processor"
    And selecionar a opção "Comum" no campo "Tipo de SMS utilizado para responder:"
    And preencher o campo "Conta"
    And preencher o campo "Senha"
    And o campo "URL de Callback (respostas dos SMSs)" já deve estar preenchido
    And marcar a opção "Envio de Ativo"
    And clicar no botão "Salvar"
    Then será exibida a mensagem "Preencha os campos obrigatórios."
    And o canal não será criado
