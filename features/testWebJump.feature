#language:pt

Funcionalidade: Validar botões solicitados pelo test
    Validar alguns botões que foram solicitados na avaliação da WebJump

    Cenario: Realizar os clicks e validação nos botões One, Two e Four
        Dado que o usuário se encontre na url "https://webjump-user.github.io/testqa/"
        Quando encontro e clico nos botões One, Two e Four
        Então valido a ausência dos botões depois de clicado
        
    Cenario: Realizar os clicks e validação nos botões One, Two e Four dentro do iframe buttons
        Dado que o usuário se encontre na url "https://webjump-user.github.io/testqa/"
        Quando encontro e clico nos botões One, Two e Four dentro do iframe buttons
        Então valido a ausência dos botões depois de clicado dentro do iframe buttons

    Cenario: Validar imagem do logo do Selenium-Webdriver
        Dado que o usuário se encontre na url "https://webjump-user.github.io/testqa/"
        Quando realizar os passos necessários do teste
        Então devo ser capaz de validar a imagem do Selenim-Webdriver

