*** Settings ***
Library    SSHLibrary

*** Test Cases ***
Check if nethvoice-proxy is removed correctly
    ${rc} =    Execute Command    remove-module --no-preserve ${module_id}
    ...    return_rc=True  return_stdout=False
    Should Be Equal As Integers    ${rc}  0
