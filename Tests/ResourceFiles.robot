*** Variables ***
#open appilication
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}  Android
${AUTOMATION_NAME}  UiAutomator2

# XPath with prefix "xpath= for login page"
${LOGIN-EMAIL-FIELD}       xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_username"]
${LOGIN-PASSWORD-FIELD}    xpath=//android.widget.EditText[@resource-id="com.stellapps.moopay:id/et_pwd"]
&{USER-DETAILS}            username=siva    password=${password}
${LOGIN-SIGNIN-BUTTON}     xpath=//android.widget.Button[@text="Sign In"]

#preference page
${CHOOSE-CC-DISTRICT}      xpath=//android.widget.AutoCompleteTextView[@text='Search CC']
${CHOOSE-VLCC-VILLAGES}    xpath=//android.widget.AutoCompleteTextView[@text='Search VLCC']

${CC-SELECT-TEXT}          MOOFLOW - CC
${VLCC-SELECT-TEXT}        VLCC48

${SELECT_PRODUCT_NAME}         xpath=//android.widget.CheckedTextView[@text='Cattle NACH']
${SECOND-LOGIN-BUTTON}     xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${MAIN-LOGIN-PAGE}         xpath=//android.widget.TextView[@text='Popular Activities']

#register famer
${REGISTER_FARMER_CLICK}       xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_farmerReg']
&{USER-DETAILS}                username=siva    password=${password}


${SEARCH_FRAMER_ID}            xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_search']
${SEARCH_FRAMER_ID_NUMBER}         0312
${SELECT_REQ_FARMER_IDS}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']

${REGISTER_FRAMER}            xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_registerFarmer']
#personal details-register farmer
${PERSONAL_DETAILS_PAGE}      xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_personalDetails']
${AADHAR_PLACE}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_aadhaarNo']
${ALTERNATE_NUMBER_PLACE}     xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_alternateMobileNumber']
${NEXT_BUTTON}                xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_next']
#register farmer address page
${ADD_LINE_1}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr1']
${ADD_LINE_2}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_addr2']
${ADD_LINE_TEXT1}             Plotno.5b,Sheshadripuram
${ADD_LINE_TEXT2}             T.nagar,Bangalore
${PINCODE_AT}                 xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_pincode']
${PINCODE}                   560068
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

#register dependent farmer
${REGISTER_DEPENDENT_FARMER}   xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_registerDependentFarmer']

#complete personal details -dependent farmer
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

#register dependent farmer address page
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

#loan request register farmer
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

#loan request dependent farmer
${SELECT_FARMER}               xpath=//android.widget.TextView[@text='DEPENDENT_FARMER']
${SEARCH_FRAMER_ID}            xpath=//android.widget.EditText[@text='Search Farmer ID/ FRN/ Mobile Number/ Name']
${SELECT_REQ_FARMER_ID}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']
${SELECT_TENURE}               xpath=//android.widget.CheckedTextView[@resource-id='android:id/text1']
${REQUEST_AMOUNT}              xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_requestAmt']
${REQUEST_AMOUNT_VALUE}            25000
${INPUT_FIELD}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/editText']
${INPUT_FIELD_VALUE}               Female
${SELECT_DOCUMENT_AT1}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/image_view']
${SELECT_DOCUMENT_AT2}        xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/image_view']
${CLICK_FIRST_DOCUMENT}      xpath=//android.view.View
${CLICK_NEXT_ELEMENT}        xpath=//android.widget.Button[@text='Next']
${CLICK_TICK_BOX}            xpath=//android.widget.CheckBox[@resource-id='com.stellapps.moopay:id/cb_TC']
${CLICK_FINAL_SUBMIT}        xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btnSubmit']

#loan summary dis page
${LOAN_SUMMARY_CLICK}          xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_loanSummary']
${VERIFY_PAGE}                 xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_pageName']
${SELECT_F_DATE}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_startDate']
${CLICK_PREVIOUS_MONTH}        xpath=//android.widget.ImageButton[@resource-id='android:id/prev']
${SELECT_DATE_20}              xpath=//android.view.View[@text='29']
${CLICK_OK}                    xpath=//android.widget.Button[@resource-id='android:id/button1']
${SELECT_SUBMIT}               xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${CLICK_DISBURSED}             xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_status']
${PRESS_NEXT_BTN}              xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']
${VERIFY_LOAN_SUMMARY}         xpath=//android.widget.TextView[@text='Transaction Summary']

#loan summary wfoa
${LOAN_SUMMARY_CLICK}          xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_loanSummary']
${VERIFY_PAGE}                 xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_pageName']
${SELECT_F_DATE}               xpath=//android.widget.EditText[@resource-id='com.stellapps.moopay:id/et_startDate']
${CLICK_PREVIOUS_MONTH}        xpath=//android.widget.ImageButton[@resource-id='android:id/prev']
${SELECT_DATE_20}              xpath=//android.view.View[@text='30']
${CLICK_OK}                    xpath=//android.widget.Button[@resource-id='android:id/button1']
${SELECT_SUBMIT}               xpath=//android.widget.Button[@resource-id='com.stellapps.moopay:id/btn_submit']
${CLICK_DISBURSED}             xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_status']
${CLICK_WFOA}                  xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_status']
${CHECK_RESPONSE}              xpath=//android.widget.TextView[@text='Total Requests -2']
${PRESS_NEXT_BTN}              xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_next']
${VERIFY_LOAN_SUMMARY}         xpath=//android.widget.TextView[@resource-id='com.stellapps.moopay:id/tv_current_summary']

#back to home page 
${BACK_TO_HOME_PAGE}           xpath=//android.widget.ImageView[@resource-id='com.stellapps.moopay:id/iv_home']
#details separated added
${password}              CHARAN@1234
${FARMER_NAME}           SHASHANK
${DOB}                   11/08/2005
${AADHAR_NUMBER}         7896541236984
${MOBILE_NUMBER}         9840421758
${ALTERNATIVE_NUMBER}    2356412578
${MOTHER_NAME}           SANGEETHA
${FATHER_NAME}           SANJEY
${BANK_AC_NO}            123456789369852147
${IFSC_CODE}             ICIC0000002

