*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão


*** Test Cases ***
Should See page Title
    Title Should Be     Training Wheels Protocol