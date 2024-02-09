#language: pt

@login_professores_e_alunos
Funcionalidade: Gerenciamento de Professores e Alunos

  Contexto:
  * que o administrador está na página inicial
  * clica no link Entrar
  
  @login_professor
  Cenário: Logar com novo professor
    Dado preencher os dados Professor
    E clicar em entrar
    Quando selecionar as materias
    Então validar pagina pincipal do Professor

  @login_aluno
  Cenário: Logar com novo aluno
    Dado preencher os dados Aluno
    Quando clicar em entrar
    Então validar pagina pincipal do Aluno