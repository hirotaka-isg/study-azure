■WindowsServer2019日本語化（PowerShellで実行）

## languagePackダウンロード/インストール
#　Windows Server 2019のlanguagePackを「C:\lang.iso」としてダウンロード
#　ダウンロードが失敗する場合は、他から取得した「lang.iso」ファイルをCドライブ直下に配置可
Invoke-WebRequest -Uri https://software-download.microsoft.com/download/pr/17763.1.180914-1434.rs5_release_SERVERLANGPACKDVD_OEM_MULTI.iso -OutFile C:\lang.iso

#　「C:\lang.iso」をマウント
$mountResult = Mount-DiskImage C:\lang.iso -PassThru

#　マウントしたISOのドライブレターを取得
$driveLetter = ($mountResult | Get-Volume).DriveLetter

#　パスを格納
$lppath = $driveLetter + ":\x64\langpacks\Microsoft-Windows-Server-Language-Pack_x64_ja-jp.cab"

#　「Lpksetup.exe」コマンドを使って日本語languagePackをインストール インストール後再起動
C:\windows\system32\Lpksetup.exe /i ja-JP /f /s /p $lppath
