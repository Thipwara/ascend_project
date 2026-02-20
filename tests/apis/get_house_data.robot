*** Settings ***
Documentation     Test suite for Potter API - GET House Data by index
...               Endpoint: GET https://potterapi-fedeperin.vercel.app/en/houses?index=3
Library           RequestsLibrary
Library           Collections
Resource          ../../resources/apis/get_house_data_resource.robot
Resource          ../../keyword/apis/get_house_data_keyword.robot

*** Test Cases ***
TC01 - Get house data success
    [Documentation]    To verify get house data api will return correct data.
    [Tags]    api    positive
    Create Session    potter_api    ${BASE_URL}
    ${response}=    GET On Session    potter_api    ${ENDPOINT}    params=index=${INDEX}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${body}=    Set Variable    ${response.json()}
    ${colors}=    Set Variable    ${body}[colors]
    Verify Get House Data Success    ${body}    ${colors}


TC02 - Get house data but user not found
    [Documentation]    To verify get house data api from invalid index. The api will return 404 not found.
    [Tags]    api    negative
    Create Session    potter_api    ${BASE_URL}
    ${response}=    GET On Session    potter_api    ${ENDPOINT}    params=index=5    expected_status=any
    Should Be Equal As Numbers    ${response.status_code}    404
    ${body}=    Set Variable    ${response.json()}
    Verify Get House Data Not Found    ${body}