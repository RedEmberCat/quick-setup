mkdir \home\user\.config\vim
mkdir \home\user\.config\current
mkdir \home\user\files
mkdir \home\user\tmp
mkdir \apps
mkdir \home\user\docs\backup/vim/auxfiles/backups/
mkdir \home\user\docs\backup/vim/auxfiles/swaps/
mkdir \home\user\docs\backup/vim/auxfiles/undos/
mkdir \home\user\docs\backup/vim/auxfiles/views/
$env:SCOOP='C:\apps\scoop'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iwr get.scoop.sh -UseBasicParsing | iex
scoop install git
'source /c/home/user/.config/vim/vimfiles/_vimrc' | Out-File -encoding ascii -NoNewline -Append C:/apps/scoop/apps/git/current/etc/vimrc
'source /c/home/user/.config/bash/bashrc' | Out-File -encoding ascii -NoNewline -Append C:/apps/scoop/apps/git/current/etc/bash.bashrc
'$include /c/home/user/.config/bash/inputrc' | Out-File -encoding ascii -NoNewline -Append C:/apps/scoop/apps/git/current/etc/inputrc
'Transparency=off' | Out-File -encoding ascii C:/apps/scoop/apps/git/current/etc/minttyrc
'OpaqueWhenFocused=yes' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'CursorType=block' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'ThemeFile=rosipov' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'Font=Consolas' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'FontHeight=10' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'FontSmoothing=full' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'BoldAsColour=no' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'BoldAsFont=no' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'AllowBlinking=no' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'BellType=0' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'Scrollbar=none' | Out-File -encoding ascii -Append C:/apps/scoop/apps/git/current/etc/minttyrc
'Window=max' | Out-File -encoding ascii -NoNewline -Append C:/apps/scoop/apps/git/current/etc/minttyrc
scoop install python
Invoke-WebRequest https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt -Outfile C:\home\user\tmp\words.txt
python -m pip install pyautogui
setx PYTHONIOENCODING utf-8
scoop bucket add extras
scoop install sumatrapdf
exit
