*** Settings ***
Library        AppiumLibrary


*** Test Cases ***
TC_1
    Open Application    http://localhost:4723/wd/hub    platformName=Android        deviceName=emulator-5554
    ...    appPackage=com.grip.dapapp       appActivity=com.grip.dapapp.MainActivity
    Sleep    3
    Wait Until Page Contains Element    //android.widget.TextView[@text="Email"]
    ...    timeout=20
    Input Text    //android.widget.EditText[@text="Masukan Email / Username"]    
    ...    pandi
    Sleep    3
    Wait Until Page Contains Element    //android.widget.TextView[@text="Password"]
    Input Text    //android.widget.EditText[@text="password"]    
    ...   nMt8zGP?
    Click Element    //android.view.ViewGroup[@index="9"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="Send Via SMS to +65999****77"]
    ...    timeout=20
    Sleep    3
    Click Element    //android.widget.TextView[@text="Send Via SMS to +65999****77"]
    Wait Until Page Contains Element    //android.widget.EditText[@index="3"]
    ...    timeout=20
    Input Text    //android.widget.EditText[@index="3"]    123456
    Sleep    5
    Wait Until Page Contains Element    //android.view.ViewGroup[@index="0"]
    ...    timeout=20
    Click Element    //android.view.ViewGroup[@index="0"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="Logout"]
    ...    timeout=20
    Click Element    //android.widget.TextView[@text="Logout"]