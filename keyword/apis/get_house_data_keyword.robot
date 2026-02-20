*** Settings ***
Library    Collections
Resource    ../../resources/apis/get_house_data_resource.robot

*** Keywords ***
Verify Get House Data Success
    [Arguments]    ${body}    ${colors}
    Should Be Equal As Strings    ${body}[house]    ${EXPECTED_HOUSE}
    Should Be Equal As Strings    ${body}[emoji]    ${EXPECTED_EMOJI}
    Should Be Equal As Strings    ${body}[founder]    ${EXPECTED_FOUNDER}
    Should Be Equal As Strings    ${body}[animal]    ${EXPECTED_ANIMAL}
    Should Be Equal As Numbers    ${body}[index]    ${EXPECTED_INDEX}

    List Should Contain Value    ${colors}    green
    List Should Contain Value    ${colors}    silver

Verify Get House Data Not Found
    [Arguments]    ${body}
    Should Be Equal As Strings    ${body}[error]    ${EXPECTED_ERROR_NOT_FOUND}