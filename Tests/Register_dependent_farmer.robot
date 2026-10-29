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
${REGISTER_DEPENDENT_FARMER}   xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_registerDependentFarmer']
#${REGISTER_FRAMER}            xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_registerFarmer']

#complete personal details page1
${PERSONAL_DETAILS_PAGE}      xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_personalDetails']
${TITLE_LOC}                  xpath=//android.widget.CheckedTextView[@resource-id='android:id/text1']
${FAMER_NAME_LOC}             xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_name']
${DATE_OF_BIRTH_LOC}          xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_dob']
${GENDER_LOC}                 xpath=//android.widget.CheckedTextView[@text='Select']
${NAME_AADHAR_LOC}            xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_nameAsAaadhaar']
${AADHAR_NUMBER_LOC}          xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_aadhaarNo']
${MOBILE_NUMBER_LOC}          xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_mobileNumber']
${ALTERNATE_NUMBER_LOC}       xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_alternateMobileNumber']
${EDUCATION_LOC}              xpath=//android.widget.CheckedTextView[@text='Select']
${RELIGION_LOC}               xpath=//android.widget.CheckedTextView[@text='Select']
${MARITAL_STATUS_LOC}         xpath=//android.widget.CheckedTextView[@text='Select']
${MOTHER_MNAME_LOC}           xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_maidenName']
${FATHER_MNAME_LOC}           xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_relationName']
${RELATIONSHIP_LOC}           xpath=//android.widget.CheckedTextView[@text='Select']
${RELATIONSHIP_CHECK}         xpath=//android.widget.CheckedTextView[@text='Father']
${NAME_BANK_LOC}              xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_nameAsPerBankDetails']
${BANK_AC_NUMBER_LOC}         xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_accountNo']
${IFSC_CODE_LOC}              xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_ifsc']
${IFSC_VALID_CHECK_LOC}       xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/bt_ifsc']
${CHECK_FOR_BANK_DETAILS}     xpath=//android.widget.EditText[@text='ICICI Bank']


${NEXT_BUTTON}                xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_next']
${ADD_LINE_1}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr1']
${ADD_LINE_2}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr2']
${ADD_LINE_TEXT1}          Plotno.5b,Sheshadripuram
${ADD_LINE_TEXT2}          Begur,Bangalore
${PINCODE_LOC}                xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_pincode']
${PINCODE}                 560068
${CLICK_ARROW}               xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/iv_pincode']
${CHECK_FOR_COUNTRY_VISIBLE}  xpath=//android.widget.EditText[@text='India']
${SELECT_POST_OFFICE}        xpath=//android.widget.CheckedTextView[@resource-id='android:id/text1']
${CLICK_FRONT_CAMERA}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_captureAadhaarFront']
${FIRST_IMAGE_LOAD}          xpath=//android.view.View
${CHECK_FOR_IMAGE}           xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_previewAadhaarFront']
${CLICK_BACK_CAMERA}         xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_captureAadhaarBack']
${UPLOAD_IMAGES}             xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_uploadAadhaar']
${CLICK_BOX}                 xpath=//android.widget.CheckBox[@resource-id='com.stellapps.moopay:id/cb_consent']
${CLICK_FINAL_SUBMIT}        xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btnSubmit']
#${SUCCESSFUL_REGISTRATION_PAGE}  xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_msg']
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
    #Click Element    ${CLICK_FINAL_SUBMIT}
    #Click Element    ${CLICK_FINAL_SUBMIT}
    #Wait Until Page Contains Element    ${SUCCESSFUL_REGISTRATION_PAGE}
    #[Teardown]    Close Application
