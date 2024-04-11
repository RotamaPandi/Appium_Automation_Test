*** Settings ***
Library    AppiumLibrary


*** Test Cases ***
TC_1
    Open Application    http://localhost:4723/wd/hub    platformName=Android        deviceName=emulator-5554
    ...    appPackage=com.experitest.ExperiBank        appActivity=com.experitest.ExperiBank.LoginActivity
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/usernameTextField
    ...    timeout=20
    Input Text    com.experitest.ExperiBank:id/usernameTextField    company
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/passwordTextField
    ...    timeout=20
    Input Text    com.experitest.ExperiBank:id/passwordTextField    company
    Click Element    com.experitest.ExperiBank:id/loginButton
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/makePaymentButton
    ...    timeout=20
    Click Element    com.experitest.ExperiBank:id/makePaymentButton
    Sleep    2
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/phoneTextField
    Input Text    com.experitest.ExperiBank:id/phoneTextField    08999
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/nameTextField
    ...    timeout=20
    Input Text    com.experitest.ExperiBank:id/nameTextField    tama
    Swipe    400    737    440    737
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/countryTextField
    ...    timeout=20
    Input Text    com.experitest.ExperiBank:id/countryTextField    Russia
    Click Element    com.experitest.ExperiBank:id/sendPaymentButton
    Wait Until Page Contains Element    android:id/button1
    ...    timeout=20
    Click Element    android:id/button1
    Wait Until Page Contains Element    com.experitest.ExperiBank:id/logoutButton
    ...    timeout=20
    Click Element    com.experitest.ExperiBank:id/logoutButton
