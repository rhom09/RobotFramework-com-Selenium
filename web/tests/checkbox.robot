*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão

*** Variables ***
${check_thor}               id:thor
${check_ironman}            css:input[value='iron-man']
${check_blackpanther}       xpath://input[@value='black-panther']

*** Test Cases ***
Marcando opção com ID
    Go To                           ${url}checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    
Marcando opção com CSS Selector
    [Tags]      ironman
    Go To                           ${url}checkboxes
    Select checkbox                 ${check_ironman}
    Checkbox Should Be Selected     ${check_ironman}
    

Marcando opção com XPATH
    [Tags]      blackpanther
    Go To                           ${url}checkboxes
    Select checkbox                 ${check_blackpanther}
    Checkbox Should Be Selected     ${check_blackpanther}   