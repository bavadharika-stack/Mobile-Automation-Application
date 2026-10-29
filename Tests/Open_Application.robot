*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}  Android
${AUTOMATION_NAME}  UiAutomator2
${LOGIN_SUBMIT_BUTTON2}    //android.widget.Button[@text="Sign In"]
${LOGIN_SUBMIT_BUTTON3}    //android.widget.Button[contains(@text,"Sign In")]
${username}                //android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_username"]

*** Test Cases ***
Open_Application
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}       deviceName=ZA222L53G5    appPackage=com.stellapps.moopay   appActivity=.ui.SplashActivity     automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element      ${LOGIN_SUBMIT_BUTTON3}
    Wait Until Page Contains Element      ${username}
    Wait Until Page Contains Element      ${LOGIN_SUBMIT_BUTTON2}

