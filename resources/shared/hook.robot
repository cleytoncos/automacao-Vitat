*** Settings ***
Documentation  Keywords to start the sessions of test and helpers keywords.
Resource  ${EXECDIR}/resources/main.robot


*** Keywords ***
### SESSION CONFIGS ###
Start the session
  Open Application  http://localhost:4723/wd/hub
  ...  platformName=Android
  ...  deviceName=emulator-5554
  ...  appPackage=br.com.rdsaude.healthPlatform.android
  ...  appActivity=staging.MainActivity
  ...  automationName=Uiautomator2


Close the Session
  [Documentation]  Close the session of test
  Sleep  3
  Close All Applications
