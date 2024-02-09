class GerenciarTurmaPage < SitePrism::Page
  set_url ''
  element :input_cmp_nome_turma, '[data-test-id="class-name-input-field"]'
  element :input_cmp_add_curso, '[id="uid-search-field-16-wb-id-field"]'
  element :btn_adicionar_turma, '[data-test-id="add-new-class"]'
  element :btn_proximo_turma, '[data-test-id="go-next-button"]'
  element :btn_pular_add_curso, '[data-test-id="class-creator-skip-button"]'
  element :btn_add_curso, :xpath, '//span[text()="Adicionar curso"]'
  element :btn_recomendacoes, '[data-test-id="assignments-subsection"]'
  element :btn_recomendar, '[data-test-id="nav-create-assignments"]'
  element :btn_recomendar_cont, '[data-test-id="multi-assign-btn"]'
  element :btn_programar, '[data-test-id="new-assignment-post-button"]'
  element :text_nome_turma, :xpath, "//h4[contains(@class,'_1hod92ax')]"
  element :text_curso_add_sucesso, :xpath, "//h3[text()='Curso(s) adicionado(s) com sucesso!']"
  element :checkbox_sel_rec_0, '[data-test-id="row-checkbox-0"]'
  element :checkbox_sel_rec_1, '[data-test-id="row-checkbox-1"]'
  element :checkbox_para_todos_al, '[data-test-id="select-same-question-set"]'

end
  