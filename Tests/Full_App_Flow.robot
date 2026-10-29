*** Settings ***
Library    AppiumLibrary
Resource   ResourceFiles.robot

*** Variables ***
${FARMER_TYPE}      dependent
${LOAN_SUMMARY}     disb

*** Keywords ***
Launch Application
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}       deviceName=ZA222L53G5    appPackage=com.stellapps.moopay   appActivity=.ui.SplashActivity     automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element     ${LOGIN-EMAIL-FIELD}     15s
    Input Text      ${LOGIN-EMAIL-FIELD}     ${USER-DETAILS}[username]
    Input Text      ${LOGIN-PASSWORD-FIELD}  ${USER-DETAILS}[password]
    Click Element   ${LOGIN-SIGNIN-BUTTON}
    Wait Until Page Contains Element     ${SECOND-LOGIN-BUTTON}   30s

Fill the preference page
    # Tap and Select Collection Center (CC)
    Click Element   ${CHOOSE-CC-DISTRICT}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    # Tap and Select VLCC
    Click Element   ${CHOOSE-VLCC-VILLAGES}
    Input Text         ${CHOOSE-VLCC-VILLAGES}    ${VLCC-SELECT-TEXT}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    #Select Product name
    Click Element     ${SELECT_PRODUCT_NAME}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Press Keycode    4
    #Successful Login
    Click Element   ${SECOND-LOGIN-BUTTON}
    Wait Until Page Contains Element     ${MAIN-LOGIN-PAGE}    30s
    Element Should Be Visible            ${MAIN-LOGIN-PAGE}
Select register farmer
    #Register farmer
    Click Element   ${REGISTER_FARMER_CLICK}
    Wait Until Element Is Visible    ${SEARCH_FRAMER_ID}       35s
    #Search farmer id
    Click Element   ${SEARCH_FRAMER_ID}
    Input Text      ${SEARCH_FRAMER_ID}        ${SEARCH_FRAMER_ID_NUMBER}
    Press Keycode    20
    Press Keycode    66
    Click Element   ${SELECT_REQ_FARMER_IDS}

    #Choose Registration flow
    Wait Until Element Is Visible    ${REGISTER_FRAMER}    15s
    Click Element    ${REGISTER_FRAMER}
    Wait Until Element Is Visible        ${PERSONAL_DETAILS_PAGE}    15s
    Input Text    ${AADHAR_PLACE}        ${AADHAR_NUMBER}
    Press Keycode    66
    Input Text    ${ALTERNATE_NUMBER_PLACE}  ${ALTERNATIVE_NUMBER}
    Press Keycode    66
    Press Keycode    4
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Wait Until Element Is Visible       ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    #Click Element    ${NEXT_BUTTON}
    #Input Text       ${ADD_LINE_1}      ${ADD_LINE_TEXT1}
    #Input Text       ${ADD_LINE_2}      ${ADD_LINE_TEXT2}
    #Click Element    ${SELECT_POST_OFFICE}
    #Press Keycode    20
    #Press Keycode    66
    Click Element    ${NEXT_BUTTON}
    #upload aadhar images
      #upload front images
    Click Element    ${CLICK_FRONT_CAMERA}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    #capture images
    Click Element    ${FIRST_IMAGE_LOAD}
    Press Keycode    66
    #Wait Until Page Contains Element   ${CHECK_FOR_IMAGE}           20s
     #upload back images
    Click Element    ${CLICK_BACK_CAMERA}
     Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${FIRST_IMAGE_LOAD}
    Press Keycode    66
    Click Element    ${UPLOAD_IMAGES}
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Wait Until Page Contains Element     ${CLICK_BOX}    20s
    Click Element    ${CLICK_BOX}
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Wait Until Page Contains Element     ${CLICK_FINAL_SUBMIT}   10s
    Click Element    ${CLICK_FINAL_SUBMIT}
    Click Element    ${CLICK_FINAL_SUBMIT}
    Wait Until Page Contains Element    ${SUCCESSFUL_REGISTRATION_PAGE}
    #[Teardown]    Close Application
Select Dependent Register Farmer
    #Register farmer
    Click Element   ${REGISTER_FARMER_CLICK}
    Wait Until Element Is Visible    ${SEARCH_FRAMER_ID}       35s
    #Search farmer id
    Click Element   ${SEARCH_FRAMER_ID}
    Input Text      ${SEARCH_FRAMER_ID}        ${SEARCH_FRAMER_ID_NUMBER}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element   ${SELECT_REQ_FARMER_IDS}
    #Choose Registration flow
    Wait Until Element Is Visible    ${REGISTER_DEPENDENT_FARMER}    15s
    Click Element    ${REGISTER_DEPENDENT_FARMER}
    Wait Until Element Is Visible        ${PERSONAL_DETAILS_PAGE}    15s
    Click Element    ${TITLE_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Input Text    ${FAMER_NAME_LOC}       ${FARMER_NAME}
    Input Text    ${DATE_OF_BIRTH_LOC}    ${DOB}
    Click Element    ${GENDER_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Input Text    ${NAME_AADHAR_LOC}          ${FARMER_NAME}
    Input Text    ${AADHAR_NUMBER_LOC}        ${AADHAR_NUMBER}
    Input Text    ${MOBILE_NUMBER_LOC}        ${MOBILE_NUMBER}
    #Press Keycode    4
    Input Text    ${ALTERNATE_NUMBER_LOC}  ${ALTERNATIVE_NUMBER}
    #Press Keycode    4
    Swipe    50    800    50    200    800
    Click Element  ${EDUCATION_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Swipe    50    800    50    200    800
    Click Element    ${RELIGION_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${MARITAL_STATUS_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Input Text     ${MOTHER_MNAME_LOC}  ${MOTHER_NAME}
    Input Text     ${FATHER_MNAME_LOC}  ${FATHER_NAME}
    Click Element  ${RELATIONSHIP_LOC}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Wait Until Element Is Visible  ${RELATIONSHIP_CHECK}  5s
    Swipe    50    800    50    200    800
    Input Text    ${NAME_BANK_LOC}           ${FARMER_NAME}
    Input Text    ${BANK_AC_NUMBER_LOC}      ${BANK_AC_NO}
    #Press Keycode    4
    Swipe    50    800    50    200    800
    Input Text    ${IFSC_CODE_LOC}      ${IFSC_CODE}
    Click Element    ${IFSC_VALID_CHECK_LOC}
    Swipe    50    800    50    200    800
    Wait Until Page Contains Element    ${CHECK_FOR_BANK_DETAILS}  10s
    Swipe    50    800    50    200    800
    Wait Until Element Is Visible       ${NEXT_BUTTON}   10s
    Click Element    ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Input Text       ${ADD_LINE_1}      ${ADD_LINE_TEXT1}
    Input Text       ${ADD_LINE_2}      ${ADD_LINE_TEXT2}
    Input Text       ${PINCODE_LOC}     ${PINCODE}
    Wait Until Element Is Visible       ${CLICK_ARROW}
    Click Element    ${CLICK_ARROW}
    Wait Until Element Is Visible   ${CHECK_FOR_COUNTRY_VISIBLE}    10s
    Click Element    ${SELECT_POST_OFFICE}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${NEXT_BUTTON}
    #upload aadhar images
      #upload front images
    Click Element    ${CLICK_FRONT_CAMERA}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    #capture images
    Click Element    ${FIRST_IMAGE_LOAD}
    Press Keycode    66
    Wait Until Page Contains Element   ${CHECK_FOR_IMAGE}           20s
     #upload back images
    Click Element    ${CLICK_BACK_CAMERA}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${FIRST_IMAGE_LOAD}
    Press Keycode    66
    Click Element    ${UPLOAD_IMAGES}
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Wait Until Page Contains Element     ${CLICK_BOX}    20s
    Click Element    ${CLICK_BOX}
    Swipe    50    800    50    200    800
    Swipe    50    800    50    200    800
    Wait Until Page Contains Element     ${CLICK_FINAL_SUBMIT}   10s
    Click Element    ${CLICK_FINAL_SUBMIT}
    Click Element    ${CLICK_FINAL_SUBMIT}
    Wait Until Page Contains Element    ${SUCCESSFUL_REGISTRATION_PAGE}     10s
Select Loan Request Register Farmer
#Click loan request
    Click Element   ${LOAN_REQUEST_CLICK}
    Wait Until Element Is Visible        ${SELECT_FARMER}      25s
    #select farmer
    Click Element   ${SELECT_FARMER}
    #Press Keycode    20
    #Press Keycode    20
    #Press Keycode    20
    #Press Keycode    20
    #Press Keycode    20
    #Press Keycode    20
    #Press Keycode    66
    Click Element   ${SELECT_REQ_FARMER_ID}
    Wait Until Page Contains Element     ${REQUEST_LOAN_PAGE_VERIFY}  20s
    #after it enters request loan page
    Swipe    50    800    50    200    800
    Click Element  ${SELECT_TENURE}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${REQUEST_AMOUNT}
    Input Text       ${REQUEST_AMOUNT}      ${REQUEST_AMOUNT_VALUE}
    Press Keycode    4
    Swipe    50    800    50    200    800
    Click Element    ${INPUT_FIELD}
    Input Text       ${INPUT_FIELD}       ${INPUT_FIELD_VALUE}

    Swipe    50    800    50    200    800
    #upload doc -aadhara
    Click Element    ${SELECT_DOCUMENT_AT1}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${CLICK_FIRST_DOCUMENT}
    Press Keycode    66
    #Press Keycode    4
    #upload doc-milkpayrep
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    #Click Element    ${SELECT_DOCUMENT_AT2}
    Press Keycode    20
    Press Keycode    66
    Click Element    ${CLICK_FIRST_DOCUMENT}
    Press Keycode    66
    #Press Keycode    4
    #click next
    Wait Until Page Contains Element    ${CLICK_NEXT_ELEMENT}   15s
    Click Element    ${CLICK_NEXT_ELEMENT}
    # Scroll down 100 times (500,1500 to 500,500)
    #Swipe    50    800    50    200    800
    Wait Until Page Contains Element    ${CLICK_TICK_BOX}          90s
    Click Element    ${CLICK_TICK_BOX}
    Click Element    ${CLICK_FINAL_SUBMIT}
    Cli
Select Loan Request Dependent Register Farmer
    Click Element   ${LOAN_REQUEST_CLICK}
    Wait Until Element Is Visible        ${SELECT_FARMER}      25s
    #select farmer
    Click Element   ${SELECT_FARMER}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element   ${SELECT_REQ_FARMER_ID}
    Wait Until Page Contains Element     ${SELECT_TENURE}  20s
    #after it enters request loan page
    Click Element  ${SELECT_TENURE}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${REQUEST_AMOUNT}
    Input Text       ${REQUEST_AMOUNT}      ${REQUEST_AMOUNT_VALUE}
    Press Keycode    4
    Swipe    50    800    50    200    800
    Click Element    ${INPUT_FIELD}
    Input Text       ${INPUT_FIELD}       ${INPUT_FIELD_VALUE}
    Press Keycode    4
    Swipe    50    800    50    200    800
    #upload doc -aadhara
    Click Element    ${SELECT_DOCUMENT_AT1}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Click Element    ${CLICK_FIRST_DOCUMENT}
    Press Keycode    66

    #upload doc-milkpayrep
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    #Click Element    ${SELECT_DOCUMENT_AT2}
    Press Keycode    20
    Press Keycode    66
    Click Element    ${CLICK_FIRST_DOCUMENT}
    Press Keycode    66
    Press Keycode    4
    #click next
    Wait Until Page Contains Element    ${CLICK_NEXT_ELEMENT}   15s
    Click Element    ${CLICK_NEXT_ELEMENT}
    # Scroll down 100 times (500,1500 to 500,500)

    Wait Until Page Contains Element    ${CLICK_TICK_BOX}        90s
    Click Element    ${CLICK_TICK_BOX}
    Click Element    ${CLICK_FINAL_SUBMIT}

Select Loan Summary for disbursed
   #loan summary page
   Click Element    ${LOAN_SUMMARY_CLICK}
   Wait Until Page Contains Element    ${VERIFY_PAGE}       15s
   #select start date
   Click Element    ${SELECT_F_DATE}
   Wait Until Page Contains Element    ${CLICK_PREVIOUS_MONTH}    10s
   Click Element    ${CLICK_PREVIOUS_MONTH}
   Wait Until Page Contains Element    ${SELECT_DATE_20}    5s
   Click Element    ${SELECT_DATE_20}
   Click Element    ${CLICK_OK}
   #select submit
   Wait Until Page Contains Element    ${SELECT_SUBMIT}   15s
   Click Element    ${SELECT_SUBMIT}
   Wait Until Page Contains Element    ${CLICK_DISBURSED}  20s
   Click Element    ${CLICK_DISBURSED}
   Click Element    ${PRESS_NEXT_BTN}
   #Wait Until Page Contains Element    ${VERIFY_LOAN_SUMMARY} 20s

Select Loan Summary for WFOA
   Click Element    ${LOAN_SUMMARY_CLICK}
   Wait Until Page Contains Element    ${VERIFY_PAGE}       15s
   #select start date
   Click Element    ${SELECT_F_DATE}
   Wait Until Page Contains Element    ${CLICK_PREVIOUS_MONTH}    10s
   Click Element    ${CLICK_PREVIOUS_MONTH}
   Wait Until Page Contains Element    ${SELECT_DATE_20}    5s
   Click Element    ${SELECT_DATE_20}
   Click Element    ${CLICK_OK}
   #select submit
   Wait Until Page Contains Element    ${SELECT_SUBMIT}   15s
   Click Element    ${SELECT_SUBMIT}
   Wait Until Page Contains Element    ${CLICK_DISBURSED}     12s
   Click Element    ${CLICK_WFOA}
   Click Element    ${PRESS_NEXT_BTN}
Return To Main Login Page
    Wait Until Element Is Visible     ${BACK_TO_HOME_PAGE}   15s
    Click Element    ${BACK_TO_HOME_PAGE}
    Wait Until Page Contains Element     ${MAIN-LOGIN-PAGE}    30s
    Element Should Be Visible            ${MAIN-LOGIN-PAGE}
*** Test Cases ***
Open_Application_And_Wait_For_Login
    Launch Application
    Fill the preference page
From_Main_Page_Direct_Towards
    Run Keyword If    '${LOAN_SUMMARY}' == 'disb'         Select Loan Summary for disbursed
    Run Keyword If    '${LOAN_SUMMARY}' == 'disb'         Return To Main Login Page

    Run Keyword If    '${LOAN_SUMMARY}' == 'wfoa'         Select Loan Summary for WFOA
    Run Keyword If    '${LOAN_SUMMARY}' == 'wfoa'         Return To Main Login Page

    Run Keyword If    '${FARMER_TYPE}' == 'main'         Select Register Farmer
    Run Keyword If    '${FARMER_TYPE}' == 'main'         Return To Main Login Page

    Run Keyword If    '${FARMER_TYPE}' == 'dependent'    Select Dependent Register Farmer

    Run Keyword If    '${FARMER_TYPE}' == 'dependent'    Return To Main Login Page

    Run Keyword If    '${FARMER_TYPE}' == 'main'         Select Loan Request Register Farmer
    Run Keyword If    '${FARMER_TYPE}' == 'main'         Return To Main Login Page

    Run Keyword If    '${FARMER_TYPE}' == 'dependent'    Select Loan Request Dependent Register Farmer
    Run Keyword If    '${FARMER_TYPE}' == 'dependent'    Return To Main Login Page
   [Teardown]    Close Application
