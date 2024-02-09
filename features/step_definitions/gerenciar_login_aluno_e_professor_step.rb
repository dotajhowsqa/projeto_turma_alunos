Dado('clica no link Entrar') do
  professor_e_alunos.link_entrar.click
end
  
Dado('preencher os dados Professor') do
  professor_e_alunos.preencher_login_prof
end
  
Quando('clicar em entrar') do
  professor_e_alunos.btn_entrar_login.click
end

E('selecionar as materias') do
  step 'o sistema deve criar um novo professor com sucesso'
  professor_e_alunos.checkbox_mat_mat_funtamental.click
  professor_e_alunos.btn_continuar.click
  professor_e_alunos.btn_pular_escola_prof.click
end


Então('validar pagina pincipal do Professor') do
  expect(professor_e_alunos.text_pagina_inicial_prof.text).to eql('Bem-vindo à Khan Academy! Aqui estão alguns recursos para ajudá-lo a começar.')
end
  
Dado('preencher os dados Aluno') do
  professor_e_alunos.preencher_login_aluno
end
  
Então('validar pagina pincipal do Aluno') do
  expect(professor_e_alunos.text_cadastro_sucesso_aluno.text).to eql('Meus cursos')
end