#Read Me
#Setup and versioning info.
#-----------------------------------------------------------------------------

#User should set execution Policy before beginning. WIth powershell in admin mode run the following: Set-ExecutionPolicy -ExecutionPolicy Unrestricted 

#-----------------------------------------------------------------------------
#User should run app to test in Android Studio to ensure correct versioning established for adb usage.
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
#Minimum Version Powershell required

#
#Major  Minor  Build  Revision  Using $PSVersionTable.PSVersion
#-----  -----  -----  --------
#5      1      15063  674
#-----------------------------------------------------------------------------


#-----------------------------------------------------------------------------
#set adb to use in whole machine: control panel > system properties > advanced > environment variables > select path > edit > new > enter the 
#path of the adb exe (C:/...AppData\Local\Android\sdk\platform-tools) being run for the command interface