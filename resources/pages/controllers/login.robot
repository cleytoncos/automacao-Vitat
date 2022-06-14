*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot

Library    AppiumLibrary

*** Variables ***
&{login}
...  field_email_index=//android.widget.EditText[@index="2"]
...  btn_continuar=//android.widget.Button[@content-desc="Continuar"]
...  field_codigo_index=//android.widget.EditText[@index="3"]
...  btn_validar_codigo=//android.widget.Button[@content-desc="Validar código"]
...  text_vivat=//android.view.View[@content-desc="Para entrar no aplicativo, digite o seu e-mail. Enviaremos um código para ele para confirmar se está tudo certinho."]


*** Keywords ***
estou na tela de login
    Wait Until Element is Visible  ${login.text_vivat}  10s

digito o email
    Wait Until Element is Visible  ${login.field_email_index}  10s
    Tap                            ${login.field_email_index}
    Input Text                     ${login.field_email_index}  ${credentials.user_01}
    Capture Page Screenshot

clico no botão continuar
    Wait Until Element is Visible  ${login.btn_continuar}
    Click Element                  ${login.btn_continuar}  

digito o código
    Wait Until Element is Visible  ${login.field_codigo_index}
    Input Text                     ${login.field_codigo_index}  ${credentials.password_01}

clico no validar o código    
    Wait Until Element is Visible  ${login.btn_validar_codigo}
    Click Element                  ${login.btn_validar_codigo}

vejo a mensagem codigo incorreto
    Wait Until Page Contains    Código incorreto, tente novamente   




