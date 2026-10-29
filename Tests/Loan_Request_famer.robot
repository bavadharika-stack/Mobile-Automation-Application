*** Settings ***
Library    AppiumLibrary
Resource   Password.robot

*** Variables ***
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${AUTOMATION_NAME}         UiAutomator2
${DEVICE_NAME}             emulator-5554
${APP_PACKAGE}             com.stellapps.moopay
${APP_ACTIVITY}            .ui.SplashActivity
${NO_RESET}                true
${NEW_COMMAND_TIMEOUT}     600
${ADB_EXEC_TIMEOUT}        60000
${APP_WAIT_ACTIVITY}       *.MainActivity
# XPath with prefix "xpath="
${LOGIN-EMAIL-FIELD}           xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_username"]
${LOGIN-PASSWORD-FIELD}        xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_pwd"]
${LOGIN-SIGNIN-BUTTON}         xpath=//android.widget.Button[@text="Sign In"]

${CHOOSE-CC-DISTRICT}          xpath=//android.widget.AutoCompleteTextView[@text='Search CC']
${CHOOSE-VLCC-VILLAGES}        xpath=//android.widget.AutoCompleteTextView[@text='Search VLCC']

${CC-SELECT-TEXT}          MOOFLOW - CC
${VLCC-SELECT-TEXT}        VLCC48
${SELECT_PRODUCT_NAME}         xpath=//android.widget.CheckedTextView[@text='Cattle NACH']
${CHOOSE_PRODUCT_NAME_TEXT}   Cattle Maintenance Loan

${SECOND-LOGIN-BUTTON}         xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${MAIN-LOGIN-PAGE}             xpath=//android.widget.TextView[@text='Popular Activities']
#${REGISTER_FARMER_CLICK}       xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_farmerReg']
${LOAN_REQUEST_CLICK}          xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_loanRequest']
${REQUEST_LOAN_PAGE_VERIFY}    xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_pageName']
&{USER-DETAILS}                username=siva    password=${password}
${SELECT_FARMER}               xpath=//android.widget.TextView[@text='FARMER']
${SEARCH_FRAMER_ID}            xpath=//android.widget.EditText[@text='Search Farmer ID/ FRN/ Mobile Number/ Name']
#${SEARCH_FRAMER_ID_NUMBER}         0233
${SELECT_REQ_FARMER_ID}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']
${SELECT_TENURE}               xpath=//android.widget.CheckedTextView[@resource-id='android:id/text1']
${REQUEST_AMOUNT}              xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_requestAmt']
${REQUEST_AMOUNT_VALUE}            25000
${INPUT_FIELD}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/editText']
${INPUT_FIELD_VALUE}               Female
${SELECT_abc'sss_FIELD}       xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_label']
${SELECT_DOCUMENT_AT1}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/image_view']
${SELECT_DOCUMENT_AT2}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/image_view']
${CLICK_FIRST_DOCUMENT}      xpath=//android.view.View
${CLICK_NEXT_ELEMENT}        xpath=//android.widget.Button[@text='Next']
${CLICK_TICK_BOX}            xpath=//android.widget.CheckBox[@resource-id='com.stellapps.moopay:id/cb_TC']
${CLICK_FINAL_SUBMIT}        xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btnSubmit']
** Test Cases ***
Login To Mobile App With Tap Selection
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    appium:deviceName=${DEVICE_NAME}
    ...    appium:automationName=${AUTOMATION_NAME}
    ...    appium:appPackage=${APP_PACKAGE}
    ...    appium:appActivity=${APP_ACTIVITY}
    ...    appium:noReset=${NO_RESET}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}

    Wait Until Page Contains Element     ${LOGIN-EMAIL-FIELD}     15s
    Input Text      ${LOGIN-EMAIL-FIELD}     ${USER-DETAILS}[username]
    Input Text      ${LOGIN-PASSWORD-FIELD}  ${USER-DETAILS}[password]
    Click Element   ${LOGIN-SIGNIN-BUTTON}

    Wait Until Page Contains Element     ${SECOND-LOGIN-BUTTON}   30s

    # Tap and Select Collection Center (CC)
    Click Element   ${CHOOSE-CC-DISTRICT}
    #Input Text      ${CHOOSE-CC-DISTRICT}    ${CC-SELECT-TEXT}
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
    #Input Text        ${SELECT_PRODUCT_NAME}     ${CHOOSE_PRODUCT_NAME_TEXT}
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
    #Click loan request
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
    #upload doc-milkpayrep
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Press Keycode    20
    Press Keycode    66
    Click Element    ${CLICK_FIRST_DOCUMENT}
    Press Keycode    66
    Wait Until Page Contains Element    ${CLICK_NEXT_ELEMENT}   15s
    Click Element    ${CLICK_NEXT_ELEMENT}
    # Scroll down 100 times (500,1500 to 500,500)
    Swipe    50    800    50    200    800
  Wait Until Page Contains Element    ${CLICK_TICK_BOX}          20s
  Click Element    ${CLICK_TICK_BOX}
  Click Element    ${CLICK_FINAL_SUBMIT}
