*** Settings ***
Documentation  Em suites é onde ficam os cenários de teste.
Resource  ${EXECDIR}/resources/main.robot
Test Setup     Start the session
Test Teardown  Close the Session


*** Test Case ***
Cenário 1: acesso a login no app código incorreto
    [tags]  1  smoke
    Dado que estou na tela de login
    E digito o email
    E clico no botão continuar
    Quando digito o código
    E clico no validar o código
    Então vejo a mensagem codigo incorreto
