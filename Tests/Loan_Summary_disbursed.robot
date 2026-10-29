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
&{USER-DETAILS}                username=siva    password=${password}
${CHOOSE-CC-DISTRICT}          xpath=//android.widget.AutoCompleteTextView[@text='Search CC']
${CHOOSE-VLCC-VILLAGES}        xpath=//android.widget.AutoCompleteTextView[@text='Search VLCC']

${CC-SELECT-TEXT}          MOOFLOW - CC
${VLCC-SELECT-TEXT}        VLCC48
${SELECT_PRODUCT_NAME}         xpath=//android.widget.CheckedTextView[@text='Cattle NACH']
${CHOOSE_PRODUCT_NAME_TEXT}   Cattle Maintenance Loan

${SECOND-LOGIN-BUTTON}         xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${MAIN-LOGIN-PAGE}             xpath=//android.widget.TextView[@text='Popular Activities']
${LOAN_SUMMARY_CLICK}          xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_loanSummary']
${VERIFY_PAGE}                 xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_pageName']
${SELECT_F_DATE}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_startDate']
${CLICK_PREVIOUS_MONTH}        xpath=//android.widget.ImageButton[@resource-id='android:id/prev']
${SELECT_DATE_20}              xpath=//android.view.View[@text='20']
${CLICK_OK}                    xpath=//android.widget.Button[@resource-id='android:id/button1']
${SELECT_SUBMIT}               xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${CLICK_DISBURSED}             xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_status']
${PRESS_NEXT_BTN}              xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']
${VERIFY_LOAN_SUMMARY}         xpath=//android.widget.TextView[@text='Transaction Summary']
*** Test Cases ***
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





