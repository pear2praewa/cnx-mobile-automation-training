*** Comments ***
# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command


*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Test Case Name
    Open Application
    ...    http://127.0.0.1:4723
    ...    appium:automationName=uiautomator2
    ...    platformName=android
    ...    appium:platformVersion=14
    ...    appium:deviceName=emulator-5554
    ...    appium:appPackage=com.wdiodemoapp
    ...    appium:appActivity=.MainActivity
    ...    appium:app=/Users/7n100345/Downloads/demo_day1/day1.apk
    ...    appium:ensureWebviewsHavePages=${True}
    ...    appium:nativeWebScreenshot=${True}
    ...    appium:newCommandTimeout=${3600}
    ...    appium:connectHardwareKeyboard=${True}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Login"]
    AppiumLibrary.Click Element    android=UiSelector().text("Login")
    AppiumLibrary.Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Sign up"]
    AppiumLibrary.Click Element    android=UiSelector().text("Sign up")
    AppiumLibrary.Click Element    xpath=//android.widget.EditText[@content-desc="input-email"]
    AppiumLibrary.Input Text    xpath=//android.widget.EditText[@content-desc="input-email"]    pear2praewa@gmail.com 
    AppiumLibrary.Input Password    xpath=//android.widget.EditText[@content-desc="input-password"]    19101998
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Close Application
