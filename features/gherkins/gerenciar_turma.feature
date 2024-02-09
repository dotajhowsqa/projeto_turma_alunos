#language: pt

@gerenciamento_turmas
Funcionalidade: Gerenciamento de Turmas

  Contexto:
  * que o administrador está na página inicial
  * clica no link Entrar

  @criar_turma
  Cenário: Professor cria uma turma
    Dado preencher os dados Professor
    E clicar em entrar
    E o Professor clica em adicionar nova turma
    Quando o professor preenche os detalhes da turma
    Então a turma deve ser criada com sucesso

  @criar_turma
  @adicionar_curso_recomendacoes_turma
  Cenário: Professor adiciona um curso e recomendacoes a uma turma
    Dado preencher os dados Professor
    E clicar em entrar
    Quando o professor adicinar curso a turma
    E clicar em criar recomendacoes 
    Então selecionar os conteudos

  @aluno_selecionar_turma
  Cenário: Aluno selecionar uma turma
    Dado preencher os dados Aluno
    E clicar em entrar
    E o Aluno clica em entrar nova turma
    Quando o professor preenche os detalhes da turma
    Então a turma deve ser criada com sucesso
