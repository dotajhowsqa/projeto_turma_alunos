class ProfessorAlunosPage < SitePrism::Page
  set_url ''
  element :input_cmp_email, '[data-test-id="signup-email-field"]'
  element :input_cpm_primeiro_nome, '[data-test-id="signup-first-name-field"]'
  element :input_cpm_sobrenome, '[data-test-id="signup-last-name-field"]'
  element :input_cpm_criar_senha, '[data-test-id="signup-password-field"]'
  element :input_cpm_email, '[id="email"]'
  element :input_cmp_email_login, '[data-test-id="identifier-field"]'
  element :input_cpm_senha_login, '[data-test-id="password-field"]'
  element :text_pagina_inicial, :xpath, '//h1[@class="_1b9bpa3"]/following-sibling::p[1]'
  element :text_cadastro_sucesso_prof, :xpath, '//h1[text()="Bem-vindo à Khan Academy!"]'
  element :text_pagina_inicial_prof, :xpath, "//span[contains(@class,'14hvi6g8')]"
  element :text_cadastro_sucesso_aluno, :xpath, "//h2[contains(@class,'_xutnbcb')]"
  element :link_cadastrese, :xpath, '//a[text()="Cadastrar-se"]'
  element :link_entrar, '[id="login-or-signup"]'
  element :span_data_mes_aluno, '[data-test-id="birthday-picker-month"]'
  element :span_mes_abr_aluno, :xpath, '//span[text()="Abr"]'
  element :span_data_dia_aluno, '[data-test-id="birthday-picker-day"]'
  element :span_dia_aluno, :xpath, '//span[text()="10"]'
  element :span_data_ano_aluno, '[data-test-id="birthday-picker-year"]'
  element :span_ano_aluno, :xpath, '//span[text()="2001"]'
  element :div_cadastrar_email, :xpath, '//div[text()="Cadastrar com e-mail"]'
  element :btn_professor, :xpath, '//button[text()="Professor"]'
  element :btn_aluno, :xpath, '//button[text()="Aluno"]'
  element :btn_cadastrese_prof, '[data-test-id="progress-shell-proceed-button"]'
  element :btn_vamos_comecar, '[data-test-id="welcome-context-card-button"]'
  element :btn_continuar, '[data-test-id="subject-selection-screen-continue"]'
  element :btn_continuar_ano_escola, :xpath, "(//div[@class='_1yok8f4'][contains(.,'Continuar')])[1]"
  element :btn_continuar_curso_escolhido, :xpath, "(//div[contains(@class,'1yok8f4')])[2]"
  element :btn_entrar_login, '[data-test-id="log-in-submit-button"]'
  element :btn_pular_escola_prof, '[data-test-id="class-creator-skip-button"]'
  element :checkbox_mat_mat_funtamental, '[data-test-id="x89db6cebfb52b811"]'
  element :checkbox_mat_cie_medio, '[data-test-id="x008af9690f00e6cd"]'
  element :checkbox_mat_economia, '[data-test-id="xaacaf77b"]'
  element :checkbox_ano_1_fundamental_aluno, '[data-test-id="grade-picker-item-1-1"]'

  def preencher_dados_prof
    email = Faker::Internet.email
    $email_prof = email
    input_cmp_email.set($email_prof)
    input_cpm_primeiro_nome.set Faker::Name.name
    input_cpm_sobrenome.set Faker::Name.last_name
    input_cpm_criar_senha.set('Mudar@123')
  end

  def preencher_dados_aluno
    email = Faker::Internet.email
    $email_aluno = email
    input_cmp_email.set($email_aluno)
    input_cpm_primeiro_nome.set Faker::Name.name
    input_cpm_sobrenome.set Faker::Name.last_name
    input_cpm_criar_senha.set('Mudar@123')
  end

  def preencher_login_prof
    input_cmp_email_login.set($email_prof)
    input_cpm_senha_login.set('Mudar@123')
  end

  def preencher_login_aluno
    input_cmp_email_login.set($email_aluno)
    input_cpm_senha_login.set('Mudar@123')
  end
end
