*** Settings ***
Library     AppiumLibrary

***Test Cases***
Ep2 Eeercise
        Open Test Application
        Close Popup When App Start
        Click Expansion Tap
        Click Basic Tap
        Click Toggle
        Input Text Name         Proud
        Select Radio Button
        Click Save Button

*** Keywords ***
Open Test Application
        Open Application    remote_url=http://localhost:4723/wd/hub     
    ...     deviceName=TestDevice   
    ...     platformVersion=11.0    
    ...     platformName=Android
    ...     appPackage=com.material.components
    ...     appActivity=com.material.components.activity.MainMenu

Close Popup When App Start
        Wait Until Page Contains Element        id=com.material.components:id/bt_close          30s
        Tap     id=com.material.components:id/bt_close

Click Expansion Tap
        Wait Until Page Contains Element    xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Expansion Panels']]  30s
        Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Expansion Panels']]

Click Basic Tap
        Sleep   2
        #Wait Until Page Contains Element    xpath=/android.widget.LinearLayout[android.widget.TextView[@text='Basic']]          30s
        Tap     xpath=//android.widget.LinearLayout[android.widget.TextView[@text='Basic']]

Click Toggle
        Wait Until Page Contains Element        id=com.material.components:id/bt_toggle_input   30s
        Tap     id=com.material.components:id/bt_toggle_input
        Sleep   2
        Tap     xpath=//android.widget.EditText[@text='Name']

Input Text Name
        [Arguments]     ${name}
        Input Text      xpath=//android.widget.EditText[@text='Name']   ${name}

Select Radio Button
        Tap     xpath=//android.widget.RadioButton[@text='Female']

Click Save Button
        Tap     id=com.material.components:id/bt_save_input
