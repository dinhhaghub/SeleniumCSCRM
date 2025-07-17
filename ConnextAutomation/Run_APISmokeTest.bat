set curdir=%cd%
@ECHO OFF
ECHO Run the CMD (Command Prompt) Program.
CLS
ECHO Target framework
CD %cd%\Framework64\v4.0.30319
ECHO 'Project Path'
msbuild "%curdir%\ConnextAutomation.sln"
ECHO 'Build Tools'
CD %curdir%\BuildTools\MSBuild\Current\Bin
msbuild "%curdir%\ConnextAutomation.sln"
ECHO 'Total 22 testcases'
goto comment
ST001_Post_Create_Lead,^
ST002_Get_WebSearchRead_Lead,^
ST003_Delete_WebSearchRead_Lead,^
ST001_Post_Create_Opportunity,^
ST002_Get_WebSearchRead_Opportunity,^
ST003_Delete_WebSearchRead_Opportunity,^
ST001_Post_Create_Booking,^
ST002_Get_WebSearchRead_Booking,^
ST003_Delete_WebSearchRead_Booking,^
ST001_Post_Create_Contact,^
ST002_Get_WebSearchRead_Contact,^
ST003_Delete_WebSearchRead_Contact,^
ST001_IMSToCRM_GuiInfo_TaiKham,^
ST002_IMSToCRM_GuiInfo_LichHenThuThuat,^
ST003_IMSToCRM_GuiInfo_LichHenThuThuat_TiemKichTrung,^
ST004_IMSToCRM_GuiInfo_NhacGiahanMau,^
ST005_IMSToCRM_GuiInfo_BetaHCG,^
ST001_Dialing,^
ST002_DialAnswer,^
ST003_HangUp,^
ST004_CDR,^
ST005_Get_PhoneRecord
:comment
ECHO 'Project Dll path' and Execute tests
CD %curdir%\microsoft.testplatform.17.9.0\tools\net462\Common7\IDE\Extensions\TestPlatform
vstest.console.exe "%curdir%\Connext.FunctionalTest\bin\Debug\net6.0\Connext.FunctionalTest.dll" /Tests:^
ST001_Post_Create_Lead,^
ST002_Get_WebSearchRead_Lead,^
ST003_Delete_WebSearchRead_Lead,^
ST001_Post_Create_Opportunity,^
ST002_Get_WebSearchRead_Opportunity,^
ST003_Delete_WebSearchRead_Opportunity,^
ST001_Post_Create_Booking,^
ST002_Get_WebSearchRead_Booking,^
ST003_Delete_WebSearchRead_Booking,^
ST001_Post_Create_Contact,^
ST002_Get_WebSearchRead_Contact,^
ST003_Delete_WebSearchRead_Contact,^
ST001_IMSToCRM_GuiInfo_TaiKham,^
ST002_IMSToCRM_GuiInfo_LichHenThuThuat,^
ST003_IMSToCRM_GuiInfo_LichHenThuThuat_TiemKichTrung,^
ST004_IMSToCRM_GuiInfo_NhacGiahanMau,^
ST005_IMSToCRM_GuiInfo_BetaHCG,^
ST001_Dialing,^
ST002_DialAnswer,^
ST003_HangUp,^
ST004_CDR,^
ST005_Get_PhoneRecord
ECHO.
PAUSE
timeout 2 >nul
EXIT