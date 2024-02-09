#language: pt

@gerenciamento_professores_e_alunos
Funcionalidade: Gerenciamento de Professores e Alunos

  Contexto:
  * que o administrador está na página inicial
  * clica no link Cadastre-se
  
  @criar_professor
  Cenário: Criar um novo professor
    Dado clicar no botao Professor
    E clicar Cadastrar com e-mail
    Quando o administrador preenche os dados Professor
    E clica no botão finalizar cadastro
    Então o sistema deve criar um novo professor com sucesso
  
  @criar_aluno
  Cenário: Criar um novo aluno
    Dado clicar no botao Aluno
    E preencher data nascimento
    Quando clicar Cadastrar com e-mail
    E o administrador preenche os dados Aluno
    E clica no botão finalizar cadastro
    Então selecionar o ano e curso que deseja
