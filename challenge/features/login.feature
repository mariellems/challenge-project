#language:pt

Funcionalidade: Tela de Login - Tentativas de login

    Contexto: Página principal
        Dado que eu acesso a página principal

    @recaptcha
    Cenário: Não clicar no reCaptcha

        Quando faço login com "mariellemeira901@gmail.com" e "123456"
        #E clicar no CAPTCHA
        E clicar no botão ENTRAR
        Então deve exibir a mensagem "Confirme que você não é um robô clicando no reCaptcha abaixo"

    @naoInformarDados
    Cenário: Não informar os dados de e-mail e/ou senha

        Quando clicar no botão ENTRAR
        Então deve exibir o hint no campo e-mail "Preencha este campo"

    @emailIncorreto
    Cenário: E-mail informado incorretamente

        Quando faço login com "testeteste.com.br" e "123456"
        #E clicar no CAPTCHA
        E clicar no botão ENTRAR
        Então deve exibir o hint no campo e-mail "Inclua um @ no endereço de e-mail. testeteste.com.br está com um @ faltando."

    @esqueceuSenha
    Cenário: Esqueci minha senha

        Quando clicar no link Esqueceu sua senha?
        E inserir o CPF "12312312387"
        #E clicar no CAPTCHA
        E clicar no botão AVANÇAR
        Então deve exibir a mensagem "Marque que que você não é um robo!"
        E clicar no link Voltar para o login
        Então devo ser redirecionado para a tela de login

    @suporte
    Cenário: Acessar a base de conhecimento
        Quando clicar no botão Acessar Agora
        Então devo ser redirecionado para a página de suporte