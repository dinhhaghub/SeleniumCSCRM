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
ECHO 'Total 12 testcases'
goto comment
TC001_login_with_invalid_valid_account,^
TC001_Create_search_delete_lead,^
TC002_TC002_Create_lead_chuyen_thanh_Cohoi,^
TC001_Cohoi_Create_Cohoi_Create_Booking,^
TC001_Create_search_delete_KhachHangCaNhan,^
TC002_Checkin_Nhanh_Tao_LienHe,^
TC001_PhanBoDuLieu_lead,^
TC002_PhanBoDuLieu_Booking,^
TC003_PhanBoDuLieu_LanKham,^
TC001_ICH_Opportunity,^
TC001_ECH_Facebook_Create_Lead,^
TC001_ImportData_ImportDaKhoa
:comment
ECHO 'Project Dll path' and Execute tests
CD %curdir%\microsoft.testplatform.17.9.0\tools\net462\Common7\IDE\Extensions\TestPlatform
vstest.console.exe "%curdir%\ConnextAutomation\bin\Debug\net6.0-windows\Connext.UITest.dll" /Tests:^
TC001_login_with_invalid_valid_account,^
TC001_Create_search_delete_lead,^
TC002_TC002_Create_lead_chuyen_thanh_Cohoi,^
TC001_Cohoi_Create_Cohoi_Create_Booking,^
TC001_Create_search_delete_KhachHangCaNhan,^
TC002_Checkin_Nhanh_Tao_LienHe,^
TC001_PhanBoDuLieu_lead,^
TC002_PhanBoDuLieu_Booking,^
TC003_PhanBoDuLieu_LanKham,^
TC001_ICH_Opportunity,^
TC001_ECH_Facebook_Create_Lead,^
TC001_ImportData_ImportDaKhoa
ECHO.
PAUSE
timeout 2 >nul
EXIT