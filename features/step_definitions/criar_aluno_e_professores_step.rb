Dado('que o administrador está na página inicial') do
  professor_e_alunos.load
  expect(professor_e_alunos.text_pagina_inicial.text).to eql('Somos uma organização sem fins lucrativos com a missão de oferecer uma educação gratuita de alta qualidade para qualquer pessoa, em qualquer lugar.')
end

Dado('clica no link Cadastre-se') do
  expect(professor_e_alunos.has_link_cadastrese?).to be_truthy
  professor_e_alunos.link_cadastrese.click
end

Quando('clicar no botao Professor') do
  expect(professor_e_alunos.has_btn_professor?).to be_truthy
  professor_e_alunos.btn_professor.click
end

Quando('clicar Cadastrar com e-mail') do
  expect(professor_e_alunos.has_div_cadastrar_email?).to be_truthy
  professor_e_alunos.div_cadastrar_email.click
end

Quando('o administrador preenche os dados Professor') do
  professor_e_alunos.preencher_dados_prof
end

Quando('clica no botão finalizar cadastro') do
  professor_e_alunos.btn_cadastrese_prof.click
end

Então('o sistema deve criar um novo professor com sucesso') do
  expect(professor_e_alunos.text_cadastro_sucesso_prof.text).to eql('Bem-vindo à Khan Academy!')
  expect(professor_e_alunos.has_btn_vamos_comecar?).to be_truthy
  professor_e_alunos.btn_vamos_comecar.click
end

Dado('clicar no botao Aluno') do
  expect(professor_e_alunos.has_btn_aluno?).to be_truthy
  professor_e_alunos.btn_aluno.click
end

Dado('preencher data nascimento') do
  professor_e_alunos.span_data_mes_aluno.click
  professor_e_alunos.span_mes_abr_aluno.click
  professor_e_alunos.span_data_dia_aluno.click
  professor_e_alunos.span_dia_aluno.click
  professor_e_alunos.span_data_ano_aluno.click
  professor_e_alunos.span_ano_aluno.click
end

Quando('o administrador preenche os dados Aluno') do
  professor_e_alunos.preencher_dados_aluno
end

Então('selecionar o ano e curso que deseja') do
  professor_e_alunos.checkbox_ano_1_fundamental_aluno.click
  professor_e_alunos.btn_continuar_ano_escola.click
  professor_e_alunos.checkbox_mat_mat_funtamental.click
  professor_e_alunos.btn_continuar_curso_escolhido.click
end
