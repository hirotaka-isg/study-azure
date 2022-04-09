#UIとロケールを日本に設定
#UIの言語を日本語で上書き
Set-WinUILanguageOverride -Language ja-JP

#時刻/日付の形式をWindowsの言語と同じにする
Set-WinCultureFromLanguageListOptOut -OptOut $False

#ロケーションを日本に変更
Set-WinHomeLocation -GeoId 0x7A

#システムロケールを日本に変更
Set-WinSystemLocale -SystemLocale ja-JP

#タイムゾーンを東京に変更
Set-TimeZone -Id "Tokyo Standard Time"

#サーバーを再起動
Restart-Computer
