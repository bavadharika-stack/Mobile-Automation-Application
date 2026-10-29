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
${REGISTER_FARMER_CLICK}       xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_farmerReg']
&{USER-DETAILS}                username=siva    password=${password}


${SEARCH_FRAMER_ID}            xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_search']
${SEARCH_FRAMER_ID_NUMBER}         4812
${SELECT_REQ_FARMER_ID}        xpath=//android.widget.TextView[@text=' 6639004812']

${REGISTER_FRAMER}            xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_registerFarmer']
${PERSONAL_DETAILS_PAGE}      xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_personalDetails']
${AADHAR_PLACE}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_aadhaarNo']
${ALTERNATE_NUMBER_PLACE}     xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_alternateMobileNumber']
${NEXT_BUTTON}                xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_next']
${ADD_LINE_1}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr1']
${ADD_LINE_2}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr2']
${ADD_LINE_TEXT1}          Plotno.5b,Sheshadripuram
${ADD_LINE_TEXT2}          T.nagar,Bangalore
${PINCODE_AT}                xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_pincode']
${PINCODE}                 6000088
${CLICK_ARROW}               xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/iv_pincode']
${SELECT_POST_OFFICE}        xpath=//android.widget.CheckedTextView[@resource-id='android:id/text1']
${CLICK_FRONT_CAMERA}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_captureAadhaarFront']
${FIRST_IMAGE_LOAD}          xpath=//android.view.View
${CHECK_FOR_IMAGE}           xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_previewAadhaarFront']
${CLICK_BACK_CAMERA}         xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_captureAadhaarBack']
${UPLOAD_IMAGES}             xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_uploadAadhaar']
${CLICK_BOX}                 xpath=//android.widget.CheckBox[@resource-id='com.stellapps.moopay:id/cb_consent']
${CLICK_FINAL_SUBMIT}        xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btnSubmit']
${SUCCESSFUL_REGISTRATION_PAGE}  xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_msg']
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

    #Register farmer
    Click Element   ${REGISTER_FARMER_CLICK}
    Wait Until Element Is Visible    ${SEARCH_FRAMER_ID}       35s
    #Search farmer id
    Click Element   ${SEARCH_FRAMER_ID}
    Input Text      ${SEARCH_FRAMER_ID}        ${SEARCH_FRAMER_ID_NUMBER}
    Press Keycode    20
    Press Keycode    66
    Click Element   ${SELECT_REQ_FARMER_ID}
    
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
    Wait Until Page Contains Element     ${CLICK_FINAL_SUBMIT}   15s
    Click Element    ${CLICK_FINAL_SUBMIT}
    Click Element    ${CLICK_FINAL_SUBMIT}
    Wait Until Page Contains Element    ${SUCCESSFUL_REGISTRATION_PAGE}
    #[Teardown]    Close Application
