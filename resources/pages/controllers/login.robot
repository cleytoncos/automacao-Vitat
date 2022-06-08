*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot

Library    AppiumLibrary

*** Variables ***
&{login}
...  field_email=//android.widget.EditText[@text="e-mail"]
...  btn_continuar=//android.widget.Button[@content-desc="Continuar"]
...  field_codigo=//android.widget.EditText[@text="Código 0 0 0 0 0 0"]
...  btn_validar_codigo=//android.widget.Button[@content-desc="Validar código"]



*** Keywords ***
estou na tela de login
    Wait Until Element is Visible  ${login.field_email}

digito o email
    Wait Until Element is Visible  ${login.field_email}  10s
    input text                     ${login.field_email}  ${credentials.user_01}  

clico no botão continuar
    Wait Until Element is Visible  ${login.btn_continuar}
    Click Element                  ${login.btn_continuar}  

digito o código
    Wait Until Element is Visible  ${login.field_codigo}
    Input Text                     ${login.field_codigo}  ${credentials.password_01}

clico no validar o código    
    Wait Until Element is Visible  ${login.btn_validar_codigo}
    Click Element                  ${login.btn_validar_codigo}

vejo a mensagem codigo incorreto
    Wait Until Page Contains    Código incorreto, tente novamente   




