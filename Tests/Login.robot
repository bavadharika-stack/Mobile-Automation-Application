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

# XPath with prefix "xpath= for login page"
${LOGIN-EMAIL-FIELD}       xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_username"]
${LOGIN-PASSWORD-FIELD}    xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_pwd"]
${LOGIN-SIGNIN-BUTTON}     xpath=//android.widget.Button[@text="Sign In"]

${CHOOSE-CC-DISTRICT}      xpath=//android.widget.AutoCompleteTextView[@text='Search CC']
${CHOOSE-VLCC-VILLAGES}    xpath=//android.widget.AutoCompleteTextView[@text='Search VLCC']

${CC-SELECT-TEXT}          MOOFLOW - CC
${VLCC-SELECT-TEXT}        VLCC48

${SECOND-LOGIN-BUTTON}     xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${MAIN-LOGIN-PAGE}         xpath=//android.widget.TextView[@text='Popular Activities']

&{USER-DETAILS}            username=siva    password=${password}

*** Test Cases ***
Login To Mobile App With Tap Selection
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    appium:deviceName=${DEVICE_NAME}
    ...    appium:automationName=${AUTOMATION_NAME}
    ...    appium:appPackage=${APP_PACKAGE}
    ...    appium:appActivity=${APP_ACTIVITY}
    ...    appium:noReset=true
    Wait Until Page Contains Element     ${LOGIN-EMAIL-FIELD}     15s
    Input Text      ${LOGIN-EMAIL-FIELD}     ${USER-DETAILS}[username]
    Input Text      ${LOGIN-PASSWORD-FIELD}  ${USER-DETAILS}[password]
    Click Element   ${LOGIN-SIGNIN-BUTTON}
    Wait Until Page Contains Element     ${SECOND-LOGIN-BUTTON}   15s
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
    Press Keycode    4

    #select product name
    Click Element     ${SELECT_PRODUCT_NAME}
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    20
    Press Keycode    66
    Press Keycode    4
    # Final Submit
    Click Element   ${SECOND-LOGIN-BUTTON}
    Wait Until Page Contains Element     ${MAIN-LOGIN-PAGE}    20s
    Element Should Be Visible            ${MAIN-LOGIN-PAGE}
    #[Teardown]    Close Application
