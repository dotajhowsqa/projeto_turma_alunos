Dado('o Professor clica em adicionar nova turma') do
  expect(gerenciar_turma.has_btn_adicionar_turma?).to be_truthy
  gerenciar_turma.btn_adicionar_turma.click
end
  
Quando('o professor preenche os detalhes da turma') do
  @nome_turma = 'Matemática'
  gerenciar_turma.input_cmp_nome_turma.set(@nome_turma)
  gerenciar_turma.btn_proximo_turma.click
  gerenciar_turma.btn_pular_add_curso.click
  gerenciar_turma.btn_pular_add_curso.click
  gerenciar_turma.btn_proximo_turma.click
end
  
Então('a turma deve ser criada com sucesso') do
  expect(gerenciar_turma.text_nome_turma.text).to eql(@nome_turma)
end

Quando('o professor adicinar curso a turma') do
  gerenciar_turma.btn_add_curso.double_click
  professor_e_alunos.checkbox_mat_mat_funtamental.click
  gerenciar_turma.btn_proximo_turma.click
  expect(gerenciar_turma.text_curso_add_sucesso.text).to eql('Curso(s) adicionado(s) com sucesso!')
end

E('clicar em criar recomendacoes') do
  gerenciar_turma.btn_proximo_turma.click
end

Então('selecionar os conteudos') do
  gerenciar_turma.checkbox_sel_rec_0.click
  gerenciar_turma.checkbox_sel_rec_1.click
  gerenciar_turma.btn_recomendar_cont.click
  gerenciar_turma.checkbox_para_todos_al.click
  gerenciar_turma.btn_programar.click
end
