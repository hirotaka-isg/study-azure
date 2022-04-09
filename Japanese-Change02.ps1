#ユーザーが使用する言語を日本語にする
Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force

#入力する言語を日本語で上書き
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

#MS-IMEの入力方式を設定
Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar

#サーバーを再起動
Restart-Computer 
