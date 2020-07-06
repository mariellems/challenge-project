Dado('que eu acesso a página principal') do
    visit 'https://financeiro.hostgator.com.br/'
end
  
Quando('faço login com {string} e {string}') do |email, senha|
    find('input[name=email]').set email
    find('#password').set senha
end
  
Quando('clicar no CAPTCHA') do
    find("#recaptcha-anchor", :visible => true).click
    sleep 5
end
  
Quando('clicar no botão ENTRAR') do
    click_button 'Entrar'
end
  
Então('deve exibir a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end
  
Então('deve exibir o hint no campo e-mail {string}') do |hint|
    page.has_text?('hint')
end

Quando('clicar no link Esqueceu sua senha?') do
    click_link 'Esqueceu sua senha?'
end
  
Quando('inserir o CPF {string}') do |cpf|
    find('#inputUserName').set cpf
    find('#inputConfirmUserName').set cpf
end
  
Quando('clicar no botão AVANÇAR') do
    click_button 'Avançar'
end

Então('clicar no link Voltar para o login') do
    click_link 'Voltar para o login'
end
  
  Então('devo ser redirecionado para a tela de login') do
    expect(page).to have_selector('#login')
end

Quando('clicar no botão Acessar Agora') do
    find(".login-block").click
end
  
Então('devo ser redirecionado para a página de suporte') do
    page.has_title? "Qual a sua dúvida?"
end