Feature: Cadastro de pessoa

Scenario: Usuário cadastra uma nova pessoa
    Given que o sistema está rodando
    When eu envio os dados de cadastro para "/cadastrar"
        | nome        | sobrenome        | cpf            | data_nascimento |
        | vrinizu     | soares           | 13345678927    | 1990-01-01      |
    Then o status code deve ser 200
    And a resposta deve conter "Pessoa cadastrada com sucesso!"
 
Scenario: Usuário tenta cadastrar pessoa com nome vazio
    Given que o sistema está rodando
    When eu envio os dados de cadastro para "/cadastrar"    
       | nome     | sobrenome | cpf       | data_nascimento |
       | Teste    | Junior    |11111111171| 2000-01-01     |
    Then o status code deve ser 400
    And a reposta deve conter "Nome é obrigatório."